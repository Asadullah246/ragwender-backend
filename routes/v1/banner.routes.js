const express = require("express");
const banner = require("../../controllers/banner")
const router = express.Router();
const loginStatus=require("../../middleware/LoginStatus")


router
    .route("/")
    .get(loginStatus, banner.getBanner)

router
    .route("/dip")
    .get(loginStatus, banner.getBannerDip)

router
    .route("/insert")
    .get(loginStatus, banner.getBannerInserts)

router
    .route("/update")
    .get(loginStatus, banner.getBannerUpdate)
    



module.exports = router;  