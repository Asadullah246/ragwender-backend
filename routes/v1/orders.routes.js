const express = require("express");
const orders = require("../../controllers/orders")
const router = express.Router();
const loginStatus=require("../../middleware/LoginStatus")


router
    .route("/")
    .get(loginStatus, orders.getOrders)

router
    .route("/details")
    .get(loginStatus, orders.getOrdersDetails)

router
    .route("/failed")
    .get(loginStatus, orders.getOrdersFailed)
        


    
module.exports = router; 
