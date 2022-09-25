const sql = require("./db.js");


// constructor
const Product = {};

Product.getProducts = (id, result) => {
    let idClause = '';
    if(id) {
      idClause = 'and p.id='+ id;
    }
    let selectQry = "SELECT p.id,p.title,p.description,p.price, GROUP_CONCAT(i.img_src SEPARATOR '|') AS images FROM products  AS p, product_images AS i WHERE FIND_IN_SET(i.product_id, p.id) != 0 "+ idClause +" GROUP BY p.id";
    sql.query(selectQry, (err, res) => {
        if(err) {
            result(err, null);
            return;
        }
        if(res && res.length > 0) {
            res.forEach((product) => {
             product.images = product.images.split('|');
            });
            result(null, res);
        } else {
            result({message: 'No Products found'}, null);
        }
    });
}

module.exports = Product;