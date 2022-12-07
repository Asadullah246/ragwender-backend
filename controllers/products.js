const geoip = require('geoip-lite');
const pool = require("../configs/database")


exports.getProducts = (req, res) => {
    return res.render('product.html', { title: "Products" }); 
  
};
exports.getProductsFeatures= (req, res) => {
    return res.render('productFeatures.html', { title: "Products" }); 
  
};
const getIP = (req) => (
    (req.headers['x-forwarded-for'] || '').split(',').pop().trim() ||
    req.connection.remoteAddress ||
    req.socket.remoteAddress ||
    req.connection.socket.remoteAddress ||
    req.headers['x-appengine-user-ip'] ||
    req.headers['fastly-client-ip']
)
exports.getProductsInsert = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM country', (err, country) => {
            connection.release();
            if (!err)
                res.render('productInsert.html', { title: "Products", country });
            else
                console.log(err)
        })
    })
};
exports.postProductsInsert = (req, res) => {
    return res.render('productInsert.html', { title: "Products" });  
};