const pool = require("../configs/database")


module.exports.getImport = (req, res) => {
    return res.render('import.html', { title: "import" }); 
  
};
module.exports.getImportCategory= (req, res) => {
    return res.render('importCategory.html', { title: "import" }); 
  
};
module.exports.getImportManufacturer= (req, res) => {
    return res.render('importManufacturer.html', { title: "import" });  
  
};
module.exports.getImportProductXlxs = (req, res) => {
    return res.render('importProductXlxs.html', { title: "import" }); 
  
};
module.exports.getImportProductJewellery = (req, res) => {
    return res.render('importProductXlxsjewellery.html', { title: "import" });  
  
};