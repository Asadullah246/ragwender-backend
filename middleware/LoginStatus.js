const loginStatus = ( req, res, next) => {
    if (req.session.authorized) { 
      next() ; 
    }
    else{
      next() ; 
        // res.redirect('/v1/login')          
    }  
  
    
  };
  module.exports = loginStatus;    