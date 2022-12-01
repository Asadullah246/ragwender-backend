const express = require("express");
const others = require("../../controllers/others")
const router = express.Router();
const loginStatus=require("../../middleware/LoginStatus")




router
    .route("/login")
    .get(others.getLogin)
    .post(others.postLogin) 

router
    .route("/logout")
    .get(others.getLogout)  
   

router
    .route("/customer")
    //  short description 

    .get(loginStatus, others.getCustomer)
//  short description


//   .post(toolsControllers.saveATool);

router
    .route("/customer/group")
    .get(loginStatus, others.getCustomerGroup)




router
    .route("/all-deals")
    .get(loginStatus, others.getAllDeals)

router
    .route("/low-stock-product")
    .get(loginStatus, others.getLowStockProduct)


router
    .route("/newsletter")
    .get(loginStatus, others.getNewsletter)

router
    .route("/pages")
    .get(loginStatus, others.getPages)

router
    .route("/postcode")
    .get(loginStatus, others.getPostcode)

router
    .route("/setting")
    .get(loginStatus, others.getSetting)

router
    .route("/slider")
    .get(loginStatus, others.getSlider)





module.exports = router; 