const pool = require("../configs/database")


module.exports.getOrders = (req, res) => {
    return res.render('orders.html', { title: "Orders" }); 
  
};
module.exports.getOrdersDetails= (req, res) => {
    return res.render('ordersDetails.html', { title: "Orders" }); 
  
};
module.exports.getOrdersFailed = (req, res) => {
    return res.render('ordersFailed.html', { title: "Orders" });  
  
};
