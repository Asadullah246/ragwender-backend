const pool = require("../configs/database")


exports.notFound = (req, res) => {
    return res.status(400).send({ res: 'No Records Found' }); 
};
exports.getCategory= (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        connection.query('SELECT * FROM category', (err, rows) => {
            connection.release();
            if (!err)
                res.status(200).send(rows); 
            else
                res.status(400).send(err); 
        })
    })
};