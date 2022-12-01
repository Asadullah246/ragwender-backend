const express = require("express");
const users = require("../../controllers/users")
const router = express.Router();
const loginStatus=require("../../middleware/LoginStatus")  


router
    .route("/")
    .get(loginStatus, users.getUsers) 

router
    .route("/group")
    .get(loginStatus, users.getUsersGroup)

router
    .route("/insert")
    .get(loginStatus, users.getUsersInsert)

router
    .route("/group-edit")
    .get(loginStatus, users.getUsersGroupEdit)

router
    .route("/group-insert")
    .get(loginStatus, users.getUsersGroupInsert)
        


    
module.exports = router; 
