const pool = require("../configs/database")
const express = require("express");
const multer = require("multer");
// const app = express(); 
// const loginStatus2=require("../middleware/LoginStatus")  

// app.use(loginStatus2)  

exports.getCategory = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM category', (err, rows) => {
            connection.release();
            if (!err)
                res.render('category.html', { title: "Category", rows });
            else
                console.log(err)
        })
    })
};
exports.getCategoryEdit = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM category WHERE category_id = ?',[req.params.id], (err, rows) => {
            connection.release();
            if (!err)
                res.render('categoryEdit.html', { title: "Edit Category", rows });
            else
                console.log(err)
        })
    })
};
exports.postCategoryEdit = (req, res) => {
    const now = new Date();
    const jsonDate = now.toJSON();
    const then = new Date(jsonDate);
    const storage = multer.diskStorage({
        destination(req, file, cb) {
          cb(null, `assets/uploads/categories`);
        },
        filename(req, file, cb) {
            cb(null, file.originalname);
        },
      });
    
    const upload = multer({ storage : storage}).any();
    upload(req,res,async function(err) {
        if(err) throw err;
        else {
            console.log(req.body)
            pool.getConnection((err, connection) => {
                if(err) throw err;
                pool.query('UPDATE category SET name = ? ,subtitle = ? ,description = ? , status = ? , parent_id = ? , hide_in_menu = ? , onhome = ? , image = ? , menuimage = ? , banner_image = ? , metatitle = ? , meta_description = ? , meta_keyword = ? , seourl = ? , seoprefix_product = ? , date_modified = ? WHERE category_id = ?',[req.body.categoryName,req.body.smallTitle,req.body.description,req.body.sources,req.body.parentCategory,req.body.chkfeaturedHideMenu,req.body.chkfeaturedShowOnHomePage,req.body.catImg,req.body.menuImg,req.body.bannerImg,req.body.metatitle,req.body.meta_description,req.body.meta_keyword,req.body.seourl,req.body.seoPrefix,then,req.params.id],(err,rows)=>{
                    connection.release(); 
                    if(!err){
                        res.send({success: true});
                    }
                    else
                        console.log(err) 
                })

            })  
        }
    })
};
exports.getCategoryNew = (req, res) => {
    return res.render('categoryNew.html', { title: "Add Category" });
};
exports.postCategoryNew = (req, res) => {
    const storage = multer.diskStorage({
        destination(req, file, cb) {
          cb(null, `assets/uploads/categories`);
        },
        filename(req, file, cb) {
            cb(null, file.originalname);
        },
      });
    
    const upload = multer({ storage : storage}).any();
    upload(req,res,async function(err) {
        if(err) throw err;
        else {
            console.log(req.body)
            pool.getConnection((err, connection) => {
                if(err) throw err;
                pool.query('INSERT INTO category SET name = ? ,subtitle = ? ,description = ? , status = ? , parent_id = ? , hide_in_menu = ? , onhome = ? , image = ? , menuimage = ? , banner_image = ? , metatitle = ? , meta_description = ? , meta_keyword = ? , seourl = ? , seoprefix_product = ?',[req.body.categoryName,req.body.smallTitle,req.body.description,req.body.sources,req.body.parentCategory,req.body.chkfeaturedHideMenu,req.body.chkfeaturedShowOnHomePage,req.body.catImg,req.body.menuImg,req.body.bannerImg,req.body.metatitle,req.body.meta_description,req.body.meta_keyword,req.body.seourl,req.body.seoPrefix],(err,rows)=>{
                    connection.release(); 
                    if(!err){
                        res.send({success: true});
                    }
                    else
                        console.log(err) 
                })

            })  
        }
    })
};
exports.getCategorySection = (req, res) => {
    return res.render('categorySection.html', { title: "Category" });

};