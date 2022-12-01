const express = require("express");
const sales = require("../../controllers/sales")
const router = express.Router();
const loginStatus=require("../../middleware/LoginStatus")


router
    .route("/")
    .get(loginStatus, sales.getSalesOrder)

router
    .route("/shipment") 
    .get(loginStatus, sales.getSalesShipment)
        


    
module.exports = router; 


