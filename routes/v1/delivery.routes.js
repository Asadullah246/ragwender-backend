const express = require("express");
const delivery = require("../../controllers/delivery")
const router = express.Router();
const loginStatus=require("../../middleware/LoginStatus")


router
    .route("/")
    .get(loginStatus, delivery.getDeliveryVendor)

router
    .route("/dip")
    .get(loginStatus, delivery.getDeliveryVendorInsert)
        


    
module.exports = router; 

