const pool = require("../configs/database")


module.exports.getTestimonials = (req, res) => {
    return res.render('testimonials.html', { title: "Testimonial" }); 
  
};

module.exports.getTestimonialInsert = (req, res) => {
    return res.render('testimonialInsert.html', { title: "Testimonial" }); 
  
};
