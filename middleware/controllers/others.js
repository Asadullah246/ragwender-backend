const pool = require("../configs/database")

// temporary login data 

const userData = {
    email: "admin@gmail.com",
    password: "admin"
}





module.exports.getCustomer = (req, res) => {
    // pool.getConnection((err, connection) => {
    //     if (err) throw err;

    //     connection.query('SELECT * FROM all_state', (err, rows) => {
    //         connection.release();
    //         if (!err)
    //             res.render('customar.html', { title: "Customer", rows });
    //         else
    //             console.log(err)
    //     })
    // })

    res.render('customar.html', { title: "Customer" });

};
module.exports.getCustomerGroup = (req, res) => {
    return res.render('customarGroup.html', { title: "Customer Group" });

};

module.exports.getLogout =async (req, res) => { 

    console.log("working"); 
    req.session.authorized=false ;
   await req.session.destroy(); 
   await res.send();    

    
    // return res.render('index.html', { title: "Login" });  

};
module.exports.getLogin = (req, res) => {
    return res.render('index.html', { title: "Login" });

};
module.exports.postLogin = async (req, res) => {

    if (req.body.email && req.body.password) {

        const { email, password } = req.body;

        // let user = await User.findOne({ 
        //     where: { username, password }
        // });
        let user = false
        if (email == userData.email && password == userData.password) {
            user = {
                email: email,
                password: password
            }

        }

        if (user) {
            req.session.user = user;
            req.session.authorized = true;

            res.redirect('/')

        }
        else {
            res.render('index.html', { loginAlert: "Please give correct information" });
        }
    }
    else {
        res.render('index.html', { loginAlert: "Please give email and password" });
    }


};
module.exports.getAllDeals = (req, res) => {
    return res.render('allDeals.html', { title: "All Deals" });

};
module.exports.getLowStockProduct = (req, res) => {
    return res.render('lowStockProduct.html', { title: "Low stock product" });

};
module.exports.getNewsletter = (req, res) => {
    return res.render('newsletter.html', { title: "Newsletter" });

};
module.exports.getPages = (req, res) => {
    return res.render('pages.html', { title: "Pages" });

};
module.exports.getPostcode = (req, res) => {
    return res.render('postcode.html', { title: "Postcode" });

};
module.exports.getSetting = (req, res) => {
    return res.render('setting.html', { title: "Setting" });

};
module.exports.getSlider = (req, res) => {
    return res.render('slider.html', { title: "Slider" });

};