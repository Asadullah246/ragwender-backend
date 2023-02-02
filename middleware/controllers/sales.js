const pool = require("../configs/database")


module.exports.getSalesOrder = (req, res) => {
    return res.render('salesOrder.html', { title: "Sales" }); 
  
};
module.exports.getSalesShipment= (req, res) => {
    return res.render('salesShipment.html', { title: "Sales" }); 
  
};
