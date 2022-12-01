const pool = require("../configs/database")


module.exports.getProducts = (req, res) => {
    return res.render('product.html', { title: "Products" }); 
  
};
module.exports.getProductsFeatures= (req, res) => {
    return res.render('productFeatures.html', { title: "Products" }); 
  
};
module.exports.getProductsInsert = (req, res) => {
    return res.render('productInsert.html', { title: "Products" });  
  
};
