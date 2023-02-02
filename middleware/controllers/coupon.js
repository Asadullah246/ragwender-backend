const pool = require("../configs/database")


module.exports.getCoupon = (req, res) => {
    return res.render('coupon.html', { title: "Coupon" }); 
  
};
module.exports.getCouponInsert= (req, res) => {
    return res.render('Couponinsert.html', { title: "Coupon" }); 
  
};
