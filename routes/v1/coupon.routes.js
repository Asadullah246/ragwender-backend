const express = require("express");
const coupon = require("../../controllers/coupon")
const router = express.Router();
const loginStatus=require("../../middleware/LoginStatus")

router
    .route("/")
    .get(loginStatus, coupon.getCoupon)
    // .post()

router
    .route("/insert")
    .get(loginStatus, coupon.getCouponInsert) 
        


    
module.exports = router; 

