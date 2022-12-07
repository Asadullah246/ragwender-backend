const express = require("express");
const products = require("../../controllers/products")
const router = express.Router();
const loginStatus=require("../../middleware/LoginStatus")


router
    .route("/")
    .get(loginStatus, products.getProducts)

router
    .route("/features")
    .get(loginStatus, products.getProductsFeatures)

router
    .route("/insert")
    .get(loginStatus, products.getProductsInsert)
    .post(loginStatus, products.postProductsInsert)
        


    
module.exports = router; 
