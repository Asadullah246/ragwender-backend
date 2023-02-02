const pool = require("../configs/database")
const datetime = require("../configs/dateAndTime")



exports.notFound = (req, res) => {
    return res.status(400).send({ res: 'No Records Found' });
};

// category apis ............................................................



// exports.getCategory2 = (req, res) => {
//     pool.getConnection((err, connection) => {
//         if (err) throw err;
//         connection.query('SELECT * FROM category WHERE parent_id BETWEEN 1 AND 4 ', (err, rows) => {
//             connection.release();
//             if (!err)
//                 res.status(200).send(rows); 
//             else
//                 res.status(400).send(err); 
//         })
//     })
// };

// category insert 






// address apis ............................................................

// get all address

exports.getAddress = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM address ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// all state apis ............................................................

// get all state 

exports.getAllState = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM all_state ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// banner apis ............................................................

// get banner  

exports.getBanner = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM banner ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// brand apis ............................................................

// get brand  

exports.getBrand = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM brand ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// cart apis ............................................................

// get cart   

exports.getCart = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM cart ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// post cart   

exports.postCart = (req, res) => {
    const body = req.body
    const product_id = body.productId 
    const pro_size = body.proSize
    const pro_size_type = body.proSizeType
    const name = body.name
    const mrp = body.mrp
    const coupon = body.coupon
    const quantity = body.quantity
    const coupon_amount = body.couponAmount
    const price = body.price 
    const discount = body.discount
    const shipping = body.shipping
    const sub_total = body.subTotal
    const grand_total = body.grandTotal
    const date = body.date
    const user_id = body.userId
    const status = body.status
    
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query("INSERT INTO cart SET product_id=?, pro_size=?, pro_size_type=?, name=?, mrp=?, coupon=?, quantity=?, coupon_amount=?, price=?, discount=?, shipping=?, sub_total=?, grand_total=?, date=?, user_id=?, status=?", [product_id, pro_size, pro_size_type, name, mrp, coupon, quantity, coupon_amount, price, discount, shipping, sub_total, grand_total, date, user_id, status], (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// INSERT INTO `cart` (`id`, `product_id`, `pro_size`, `pro_size_type`, `name`, `mrp`, `coupon`, `quantity`, `coupon_amount`, `price`, `discount`, `shipping`, `sub_total`, `grand_total`, `date`, `user_id`, `status`) VALUES (NULL, '20', 'M', NULL, 'T shirt', '20', NULL, '2', NULL, '20', '', NULL, NULL, NULL, NULL, NULL, NULL);

// 'INSERT INTO user SET user_group_id= ?, username = ? ,password = ? ,salt = ? , email = ? , code=?,phone_no=?, ip=?, status = ? ', [0, userName, password, "default", email, countryCode, phoneNumber, "null", 1]

// category apis ............................................................

// get all category 

exports.getCategory = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM category ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// get cat_custom_size  

exports.getCatCustomSize = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM cat_custom_size ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// get cat_ready_images  

exports.getCatReadyImages = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM cat_ready_images ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// country apis ............................................................

// get country  

exports.getCountry = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM country ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// coupon apis ............................................................

// get coupon  

exports.getCoupon = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM coupon ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// customer apis ............................................................

// get customer  

exports.getCustomer = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM customer ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};


// get customer_account  

exports.getCustomerAccount = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM customer_account ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// get customer_ban_ip  

exports.getCustomerBanIp = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM customer_ban_ip ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// get customer_group  

exports.getCustomer_group = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM customer_group ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// get customer_ip  

exports.getCustomerIp = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM customer_ip ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// get customer_wishlist  

exports.getCustomerWishlist = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM customer_wishlist ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// option apis ............................................................

// get option   

exports.getOption = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM option ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};


// get option_description  

exports.getOptionDescription = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM option_description ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};


// get option_value  

exports.getOptionValue = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM option_value ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// get option_value_description  

exports.getOptionValueDescription = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM option_value_description ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// order apis ............................................................

// get order  

exports.getOrder = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM order ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// get order_option   

exports.getOrderOption = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM order_option ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// get order_product  

exports.getOrderProduct = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM order_product', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// get order_status  

exports.getOrderStatus = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM order_status ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// get order_variant  

exports.getOrderVariant = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM order_variant ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// pages apis ............................................................

// get pages   

exports.getPages = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM pages ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// postcode apis ............................................................

// get postcode   

exports.getPostcode = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM postcode ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// product apis ............................................................

// get product 

exports.getProduct = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM product ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// get product_attribute 

exports.getProductAttribute = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM product_attribute ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// get product_color 

exports.getProductColor = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM product_color ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// get product_image 

exports.getProductImage = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM product_image ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// get product_rating 

exports.getProductRating = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM product_rating ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// get product_related 

exports.getProductRelated = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM product_related ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// get product_review 

exports.getProductReview = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM product_review ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// get product_size 

exports.getProductSize = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM product_size ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// get product_to_category 

exports.getProductToCategory = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM product_to_category ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// get product_type 

exports.getProductType = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM product_type ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// get product_variant 

exports.getProductVariant = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM product_variant ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// slide apis ............................................................

// get slide 

exports.getSlide = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM slide', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// tbl apis ............................................................


// get tbl_404 

exports.getTbl404 = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM tbl_404 ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// get tbl_config 

exports.getTblConfig = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM tbl_config ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// get tbl_newsletter 

exports.getTblNewsletter = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM tbl_newsletter ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// get tbl_4testimonials

exports.getTblTestimonials = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM tbl_testimonials ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// get tbl_tracking 

exports.getTblTracking = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM tbl_tracking ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// user apis ............................................................

// login apis 

exports.getLogin = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM user', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};



exports.postLogin = (req, res) => {
    const { countryCode, phoneNumber, userName, email, password } = req.body;

    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('INSERT INTO user SET user_group_id= ?, username = ? ,password = ? ,salt = ? , email = ? , code=?,phone_no=?, ip=?, status = ? ', [0, userName, password, "default", email, countryCode, phoneNumber, "null", 1], (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else {
                console.log(err);
                res.status(400).send(err);
            }
        })
    })
};


// get user_group 

exports.getUserGroup = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM user_group ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
};

// vendor apis ............................................................

// get vendor 

exports.getVendor = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM vendor ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err);
        })
    })
}; 