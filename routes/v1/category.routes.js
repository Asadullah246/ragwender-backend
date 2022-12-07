const express = require('express');
const router = express.Router();
const category = require("../../controllers/category")
const loginStatus = require("../../middleware/LoginStatus")

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
