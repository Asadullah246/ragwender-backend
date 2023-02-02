const pool = require("../configs/database")


module.exports.getBanner = (req, res) => {
    return res.render('banners.html', { title: "Banner" }); 
  
};
module.exports.getBannerDip= (req, res) => {
    return res.render('bannerDip.html', { title: "Banner" }); 
  
};
module.exports.getBannerInserts = (req, res) => {
    return res.render('bannerInserts.html', { title: "Banner" }); 
  
};
module.exports.getBannerUpdate = (req, res) => {
    return res.render('bannerUpdate.html', { title: "Banner" });  
  
};