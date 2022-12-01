const pool = require("../configs/database")
const express = require("express");
const app = express(); 
const loginStatus2=require("../middleware/LoginStatus")  

app.use(loginStatus2)   


module.exports.getCategory = (req, res) => {

    const category = "SELECT * FROM category "

    // const failedData = "SELECT * FROM order_status WHERE name = 'failed'"

    pool.getConnection((err, connection) => {
        if (err) throw err;

        connection.query(category, (err, rows) => {
            connection.release();
            if (!err)

                res.render('category.html', { title: "Category", rows });

            else
                console.log(err)


        })
    })


};
module.exports.getCategoryEdit = (req, res) => {
    return res.render('categoryEdit.html', { title: "Category" });

};
module.exports.getCategoryNew = (req, res) => {
    return res.render('categoryNew.html', { title: "Category" });

};
module.exports.postCategoryNew = (req, res, next) => {
    console.log(req.body); 
    console.log(req.file);  
    res.send("skdfkj")

    

    const sql = "INSERT INTO customers (name, address) VALUES ('Company Inc', 'Highway 37')";
       
      
    // pool.getConnection((err, connection) => {

    //     if(err) throw err;
    //     pool.query('INSERT INTO category SET name = ? ,description = ?',[req.body.category, req.body.small],(err,rows)=>{
    //         connection.release(); 
    //         if(!err){
    //             res.send({success: true});
    //         }
    //         else
    //             console.log(err) 
    //     })

    // })   
     
  
    

};
module.exports.getCategorySection = (req, res) => {
    return res.render('categorySection.html', { title: "Category" });

};