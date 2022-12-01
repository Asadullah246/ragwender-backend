const errorHandler  = (err, req, res, next) => {
    res.send(err.message);
    // if (req.headersSent) {
    //     return next(err);
    //   }
    //   console.log(err);
    //   res.status(500).send({
    //     message: err.message,
    //     success: false,
    //   });
  };
  
  module.exports = errorHandler; 