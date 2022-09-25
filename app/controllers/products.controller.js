const Product = require('../models/products.model.js');

// Get products details from db

exports.getProducts = (req, res) => { 
 const productId = req.params.id;
  Product.getProducts(productId, (err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Error in getting products"
      });
    else res.send(data);
  });
};