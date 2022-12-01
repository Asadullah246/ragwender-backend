const express = require("express");
const redirection = require("../../controllers/redirection")
const router = express.Router();
const loginStatus=require("../../middleware/LoginStatus")


router
    .route("/")
    .get(loginStatus, redirection.getRedirection)

router
    .route("/edit")
    .get(loginStatus, redirection.getRedirectionEdit)

router
    .route("/insert")
    .get(loginStatus, redirection.getRedirectionInsert)
        


    
module.exports = router; 
