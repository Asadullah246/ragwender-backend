const express = require("express");
const api = require("../../controllers/apis")
const router = express.Router();
const loginStatus = require("../../middleware/LoginStatus")

router
    .route("/")
    .get(api.notFound)

// router.route("/address")
//     .get(api.getAddress)

// router.route("/all-state")
//     .get(api.getAllState)

router.route("/banner")
    .get(api.getBanner)

router.route("/brand")
    .get(api.getBrand)

router.route("/cart")
    .get(api.getCart)
    .post(api.postCart)

router.route("/category")
    .get(api.getCategory)

router.route("/category-custom-size")
    .get(api.getCatCustomSize)

router.route("/category-ready-image")
    .get(api.getCatReadyImages)

router.route("country")
    .get(api.getCountry)

router.route("/coupon")
    .get(api.getCoupon)

router.route("customer")
    .get(api.getCustomer)

router.route("/customer-account")
    .get(api.getCustomerAccount)

// router.route("/customer-ban-ip")
// .get(api.getCustomerBanIp)

router.route("/customer-group")
    .get(api.getCustomer_group)

// router.route("/customer-ip")
// .get(api.getCustomerIp)

router.route("/wishlist")
    .get(api.getCustomerWishlist)

router.route("/option")
    .get(api.getOption)

router.route("/option-description")
    .get(api.getOptionDescription)

router.route("/option-value")
    .get(api.getOptionValue)

router.route("/option-value-description")
    .get(api.getOptionValueDescription)

router.route("/order")
    .get(api.getOrder)

router.route("/order-option")
    .get(api.getOrderOption)

router.route("/order-product")
    .get(api.getOrderProduct)

router.route("/order-status")
    .get(api.getOrderStatus)

router.route("/order-variant")
    .get(api.getOrderVariant)

router.route("/pages")
    .get(api.getPages)

router.route("/postcode")
    .get(api.getPostcode)

router.route("/product")
    .get(api.getProduct)

router.route("/product-attribute")
    .get(api.getProductAttribute)

router.route("/product-color")
    .get(api.getProductColor)

router.route("/product-image")
    .get(api.getProductImage)

router.route("/product-rating")
    .get(api.getProductRating)

router.route("/product-related")
    .get(api.getProductRelated)

router.route("/product-review")
    .get(api.getProductReview)

router.route("/product-size")
    .get(api.getProductSize)

router.route("/product-to-category")
    .get(api.getProductToCategory)

router.route("/product-type")
    .get(api.getProductType)

router.route("/product-variant")
    .get(api.getProductVariant)

router.route("/slide")
    .get(api.getSlide)

router.route("/tbl-404")
    .get(api.getTbl404)

router.route("/tbl-config")
    .get(api.getTblConfig)

router.route("/tbl-newsletter")
    .get(api.getTblNewsletter)

router.route("/tbl-testimonials")
    .get(api.getTblTestimonials)

router.route("/tbl-tracking")
    .get(api.getTblTracking)


router.route("/login")
    .get(api.getLogin)
    .post(api.postLogin)


// router.route("/user-group")
//     .get(api.getUserGroup)

router.route("/vendor")
    .get(api.getVendor)


module.exports = router;  