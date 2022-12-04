const express = require("express");
const api = require("../../controllers/apis")
const router = express.Router();
const loginStatus=require("../../middleware/LoginStatus")

router
    .route("/")
    .get(loginStatus, api.notFound)

router
    .route("/category")
    .get(loginStatus, api.getCategory)
    
module.exports = router;  