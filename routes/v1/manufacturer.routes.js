const express = require("express");
const manufacturer = require("../../controllers/manufacturer")
const router = express.Router();
const loginStatus=require("../../middleware/LoginStatus")


router
    .route("/")
    .get(loginStatus, manufacturer.getManufacturer)

router
    .route("/edit")
    .get(loginStatus, manufacturer.getManufacturerEdit)

router
    .route("/insert")
    .get(loginStatus, manufacturer.getManufacturerInsert)
        


    
module.exports = router; 

