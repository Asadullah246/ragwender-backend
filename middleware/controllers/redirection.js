const pool = require("../configs/database")


module.exports.getRedirection = (req, res) => {
    return res.render('redirection.html', { title: "Redirection" }); 
  
};
module.exports.getRedirectionEdit= (req, res) => {
    return res.render('redirectionEdit.html', { title: "Redirection" }); 
  
};
module.exports.getRedirectionInsert = (req, res) => {
    return res.render('redirectionInsert.html', { title: "Redirection" }); 
  
};
