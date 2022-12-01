const express = require("express");
const testimonial = require("../../controllers/testimonial")
const router = express.Router();
const loginStatus=require("../../middleware/LoginStatus")


router
    .route("/")
    .get(loginStatus, testimonial.getTestimonials) 


router
    .route("/insert")
    .get(loginStatus, testimonial.getTestimonialInsert)
        


    
module.exports = router; 
