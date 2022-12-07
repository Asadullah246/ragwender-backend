const pool = require("../configs/database")
const datetime = require("../configs/dateAndTime")



exports.notFound = (req, res) => {
    return res.status(400).send({ res: 'No Records Found' });
};
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

    const ipAddress = ip.address()

    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('INSERT INTO user SET user_group_id= ?, username = ? ,password = ? ,salt = ? , email = ? , code=?,phone_no=?, ip=?, status = ? ', [0, userName, password, "default something", email, countryCode, phoneNumber, ipAddress, 1], (err, rows) => {
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
exports.getCategory = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM category WHERE parent_id=0 ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows);
            else
                res.status(400).send(err); 
        })
    })
};

exports.getCategory2 = (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM category WHERE parent_id BETWEEN 1 AND 4 ', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows); 
            else
                res.status(400).send(err); 
        })
    })
};

// category insert 

// INSERT INTO `category` (`category_id`, `name`, `image`, `menuimage`, `banner_image`, `description`, `metatitle`, `meta_description`, `meta_keyword`, `parent_id`, `top`, `column`, `sort_order`, `status`, `date_added`, `date_modified`, `level`, `seourl`, `onhome`, `hide_in_menu`, `subtitle`, `seoprefix-product`) VALUES (NULL, 'man', NULL, 'dfsdf', 'dfsdf', 'description', 'dfsdf', 'dsf', 'df', '0', '1', '1', '0', '126', '2022-12-06 09:44:58', '2022-12-06 09:44:58', '1', 'sdfsdf', '44', '44', 'dfsdf', 'sdfsdf');