const express = require("express");
const editContentInsertPage = require("../../controllers/editContentPage")
const router = express.Router();
const loginStatus=require("../../middleware/LoginStatus")


router
    .route("/")
    .get(loginStatus, editContentInsertPage.getEditContentPage)

router
    .route("/insert")
    .get(loginStatus, editContentInsertPage.getEditContentInsertPage)
        


    
module.exports = router;   

