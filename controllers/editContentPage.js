const pool = require("../configs/database")


module.exports.getEditContentPage = (req, res) => {
    return res.render('editContentPage.html', { title: "Content Page" }); 
  
};
module.exports.getEditContentInsertPage = (req, res) => {
    return res.render('editContentInsertPage.html', { title: "Content Page" }); 
  
};
