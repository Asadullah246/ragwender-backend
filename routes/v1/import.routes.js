const express = require("express");
const importData = require("../../controllers/import")
const router = express.Router();
const loginStatus=require("../../middleware/LoginStatus")


router
    .route("/")
    .get(loginStatus, importData.getImport)

router
    .route("/category")
    .get(loginStatus, importData.getImportCategory)

router
    .route("/manufacturer")
    .get(loginStatus, importData.getImportManufacturer)

router
    .route("/product")
    .get(loginStatus, importData.getImportProductXlxs)

router
    .route("/jewellery")
    .get(loginStatus, importData.getImportProductJewellery)
        


    
module.exports = router; 