module.exports = app => {
    const authJwt = require("../middleware/authJwt.js");
    const users = require("../controllers/users.controller.js");
    const products = require("../controllers/products.controller.js");
    const carts = require("../controllers/carts.controller.js");
    let router = require("express").Router();
  
    // Create a new user
    router.post("/users/register", users.create);

    //User login
    router.post("/users/login", users.login);

    //Get Products
    router.get("/products", [authJwt.verifyToken], products.getProducts);

    //Get Products By Product Id
    router.get("/products/:id",  [authJwt.verifyToken], products.getProducts);

    //Add products to cart
    router.post("/carts/:cartId", [authJwt.verifyToken], carts.addProduct);

    //Delete products to cart
    router.delete("/carts/:cartId/remove/:productId", [authJwt.verifyToken], carts.deleteProductFromCart);

    //Get all products from cart
    router.get("/carts/:cartId", [authJwt.verifyToken], carts.getProductsFromCart);



    app.use('/api/v1', router);
  };
  