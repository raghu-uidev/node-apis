const sql = require("./db.js");


// constructor
const Cart = {};

Cart.addProduct = (cartId, productData, result) => {
    const {id, quantity} = productData;
    sql.query("INSERT INTO cart (" + "cart_id, " + "product_id," + "quantity"+") VALUES (?, ?, ?)", [cartId, id, quantity], (err,res) => {
      if(err) {
        result({message: 'Unable to add product to cart'}, null);
        return;
      }
      result(null, {success: true, message: "Product added to cart successfully"});
    });
}

Cart.deleteProductFromCart = (cartId, productId, result) => {
    sql.query("DELETE from cart where cart_id='"+cartId+"' and product_id='"+productId+"'", (err,res) => {  
      if(err) {
        result({message: 'Unable to remove product to cart'}, null);
        return;
      }
      result(null, {success: true, message: "Product removed from cart successfully"});
    });
}

Cart.getProductsFromCart = (cartId, result) => {
    sql.query("SELECT p.id,p.title,p.description,p.price,c.quantity FROM products  AS p, cart AS c WHERE FIND_IN_SET(c.product_id, p.id) != 0 and cart_id='"+cartId+"'", (err,res) => {
      console.log(err, res);  
      if(err) {
        result({message: 'Unable to get product from cart'}, null);
        return;
      }
      if(res && res.length > 0) {
        result(null, res);
      } else {
        result({message: 'No productd added cart'}, null);
      }
    });
}


module.exports = Cart;