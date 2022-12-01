const express = require('express');
const app = express();
const cors = require("cors");
require("dotenv").config();
app.use(cors());
const port = process.env.PORT || 5000;
const path = require('path');
const nunjucks = require("nunjucks")
const pool = require("./configs/database")
const errorHandler = require("./middleware/errorHandler")
const bodyParser = require('body-parser')
const session = require('express-session');
const loginStatus=require("./middleware/LoginStatus")
app.use(bodyParser.urlencoded({ extended: false }))
app.use(bodyParser.json())

const multer  = require('multer')
const upload = multer({ dest: 'uploads/' })

const otherRoutes = require("./routes/v1/other.routes")
const bannerRoutes = require("./routes/v1/banner.routes")
const categoryRoutes = require("./routes/v1/category.routes")
const couponRoutes = require("./routes/v1/coupon.routes")
const deliveryRoutes = require("./routes/v1/delivery.routes")
const importRoutes = require("./routes/v1/import.routes")
const manufacturerRoutes = require("./routes/v1/manufacturer.routes")
const ordersRoutes = require("./routes/v1/orders.routes")
const productsRoutes = require("./routes/v1/products.routes")
const redirectionRoutes = require("./routes/v1/redirection.routes")
const salesRoutes = require("./routes/v1/sales.routes")
const testimonialRoutes = require("./routes/v1/testimonial.routes")
const usersRoutes = require("./routes/v1/users.routes")
const editContentRoutes = require("./routes/v1/editContentPage.routes")


app.use(express.static(path.resolve(__dirname, "assets")));
nunjucks.configure(path.resolve(__dirname, "views"), {
  autoescape: true,
  express: app,
  noCache: false,
  watch: true
});


// session 

app.use(session({
  secret: '123456catrdfdsfsdfsdfdghfgssfsdfdsfdsfdsf',
  resave: false,
  saveUninitialized: true,
  cookie: { sameSite: 'strict', maxAge: 60000000 },  
  // cookie: { maxAge: 60000 }  
}))



// routes 

app.use("/v1", otherRoutes);
app.use("/v1/banners", bannerRoutes);
app.use("/v1/category", categoryRoutes);
app.use("/v1/coupon", couponRoutes);
app.use("/v1/delivery-vendor", deliveryRoutes);
app.use("/v1/import", importRoutes);
app.use("/v1/manufacturer", manufacturerRoutes);
app.use("/v1/orders", ordersRoutes);
app.use("/v1/products", productsRoutes);
app.use("/v1/redirection", redirectionRoutes);
app.use("/v1/testimonials", testimonialRoutes);
app.use("/v1/sales-orders", salesRoutes);
app.use("/v1/users", usersRoutes);
app.use("/v1/edit-content-page", editContentRoutes);



app.get('/', loginStatus,  function (req, res) {  

    const allOrder = "SELECT * FROM order "

    const failedData = "SELECT * FROM order_status WHERE name = 'failed'"

    pool.getConnection((err, connection) => {
      if (err) throw err;

      connection.query(failedData, (err, rows) => { 
        connection.release();
        if (!err)

          res.render('dashboard.html', { title: "Dashboard", rows });

        else
          console.log(err)


      })
    })
  

});


// post method 

// pool.getConnection((err, connection)=>{
//   if(err) throw err;
//   connection.query('INSERT INTO recap SET companyname = ? ,audio = ?,transcript_en = ?,transcript_es = ?,timer = ?,slug = ?',[req.body.name, `uploads/${req.files[0].filename}`, entrans,result, req.body.timer, req.body.slug],(err,rows)=>{
//       connection.release();
//       if(!err){
//           res.send({success: true});
//       }
//       else
//           console.log(err)
//   })
// })


/* 404 Route */

app.get("*", (req, res) => {
  res.send({
    message: "404 Not Found",
    success: false,
  });
});


app.listen(port, () => {
  console.log("Listening to this port: ", port);
})


// error handler middleware 

app.use(errorHandler);


process.on("unhandledRejection", (err, promise) => {
  console.log(`Error: ${err.message}`);
  //close server and exit process
  // app.close(() => process.exit(1));
});;