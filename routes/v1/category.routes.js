const express = require('express');
const router = express.Router();
const category = require("../../controllers/category")
const loginStatus = require("../../middleware/LoginStatus")
// const multer  = require('multer')
// const upload = multer({ dest: 'uploads/' }) 

// const storage = multer.diskStorage({
//     destination: function (req, file, cb) { 
//       cb(null, 'uploads/')
//     },
//     filename(req, file, cb) { 
//         console.log(req.body);
//         const fileNameArr = file.originalname.split('.');
//         cb(null, `${Date.now()}.${fileNameArr[fileNameArr.length - 1]}`);
//       },
//   })
  
//   const upload = multer({ storage: storage }) 

 

router
    .route("/")
    .get(loginStatus, category.getCategory) 

router
    .route("/edit/:id")
    .get(loginStatus, category.getCategoryEdit)
    .post(loginStatus, category.postCategoryEdit)   

router
    .route("/new")
    .get(loginStatus, category.getCategoryNew)
    .post(loginStatus, category.postCategoryNew)   

router
    .route("/section")
    .get(loginStatus, category.getCategorySection)
        


    
module.exports = router; 
