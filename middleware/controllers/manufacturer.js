const pool = require("../configs/database")


module.exports.getManufacturer = (req, res) => {
    return res.render('manufacturer.html', { title: "Manufacturer" }); 
  
};
module.exports.getManufacturerEdit= (req, res) => {
    return res.render('manufacturerEdit.html', { title: "Manufacturer" }); 
  
};
module.exports.getManufacturerInsert = (req, res) => {
    return res.render('manufacturerInsert.html', { title: "Manufacturer" }); 
  
};
