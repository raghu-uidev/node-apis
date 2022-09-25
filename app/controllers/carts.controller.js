const Cart = require('../models/carts.model.js');

// Get products details from db

exports.addProduct = (req, res) => { 
 const cartId = req.params.cartId;
 const productData = req.body;
 Cart.addProduct(cartId, productData, (err, data) => {
    if (err)
      res.status(500).send({
        message:
          err.message || "Error in adding product to cart"
      });
    else res.send(data);
  });
};

exports.deleteProductFromCart = (req, res) => {
    const cartId = req.params.cartId;
    const productId = req.params.productId;
    Cart.deleteProductFromCart(cartId, productId, (err, data) => {
       if (err)
         res.status(500).send({
           message:
             err.message || "Error in adding product to cart"
         });
       else res.send(data);
     });
}

exports.getProductsFromCart = (req, res) => {
    const cartId = req.params.cartId;
    Cart.getProductsFromCart(cartId, (err, data) => {
       if (err)
         res.status(500).send({
           message:
             err.message || "Error in getting products from cart"
         });
       else res.send(data);
     });
}