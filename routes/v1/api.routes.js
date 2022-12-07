const express = require("express");
const api = require("../../controllers/apis")
const router = express.Router();
const loginStatus=require("../../middleware/LoginStatus")

router
    .route("/")
    .get( api.notFound)

router
    .route("/login")
    .get( api.getLogin)
    .post(api.postLogin)

router
    .route("/category")
    .get(api.getCategory)
router
    .route("/category2")
    .get(api.getCategory2)
    
module.exports = router;  