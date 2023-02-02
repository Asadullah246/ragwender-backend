const pool = require("../configs/database")


module.exports.getDeliveryVendor= (req, res) => {
    return res.render('deliveryVendor.html', { title: "Delivery" }); 
  
};
module.exports.getDeliveryVendorInsert = (req, res) => {
    return res.render('deliveryVendorInsert.html', { title: "Delivery" }); 
  
};
