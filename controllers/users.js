const pool = require("../configs/database")


module.exports.getUsers = (req, res) => {
    return res.render('users.html', { title: "Users" }); 
  
};
module.exports.getUsersInsert = (req, res) => {
    return res.render('userInsert.html', { title: "Users" }); 
  
};
module.exports.getUsersGroup = (req, res) => {
    return res.render('userGroup.html', { title: "Users" }); 
  
};
module.exports.getUsersGroupInsert = (req, res) => {
    return res.render('userGroupInsert.html', { title: "Users" }); 
  
};
module.exports.getUsersGroupEdit= (req, res) => {
    return res.render('userGroupEdit.html', { title: "Users" }); 
  
};

