import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var products_on_the_cart = [
    {
      "name": "Shoes",
      "picture": "images/products/shoe1.jpg",
      "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "Shoes",
      "picture": "images/products/shoe1.jpg",
      "price": 854,
      "size": "M",
      "color": "Red",
      "quantity": 2,
    },
  ];

  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: products_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_prod_name: products_on_the_cart[index]["name"],
            cart_prod_color: products_on_the_cart[index]["color"],
            cart_prod_qty: products_on_the_cart[index]["quantity"],
            cart_prod_size: products_on_the_cart[index]["size"],
            cart_prod_price: products_on_the_cart[index]["price"],
            cart_prod_picture: products_on_the_cart[index]["picture"],
          );
        });
  }
}

//constructor called above
class Single_cart_product extends StatelessWidget {
  @override
  final cart_prod_name;
  final cart_prod_picture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_color,
    this.cart_prod_price,
    this.cart_prod_picture,
    this.cart_prod_qty,
    this.cart_prod_size,
  });

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Card(
      child: Row(
        children: <Widget>[
          new SizedBox(
            width: (screenSize.width / 5) * 4.3,
            child: ListTile(
              //Leading Section
              leading: new Image.asset(
                cart_prod_picture,
                width: 80.0,
                height: 80.0,
              ),
              //Title Section
              title: new Text(cart_prod_name),
              //Subtitle Section
              subtitle: new Column(
                children: <Widget>[
                  new Row(
                    children: <Widget>[
                      new Padding(
                          padding: const EdgeInsets.all(0.0),
                          child: new Text("Size:")),
                      new Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: new Text(
                            cart_prod_size,
                            style: TextStyle(color: Colors.red),
                          )),

                      //For Product Color
                      new Padding(
                        padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                        child: new Text("Color:"),
                      ),
                      new Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: new Text(cart_prod_color,
                            style: TextStyle(color: Colors.red)),
                      )
                    ],
                  ),

                  // This is for product price
                  new Container(
                    alignment: Alignment.topLeft,
                    child: new Text(
                      "$cart_prod_price\ ₹",
                      style: TextStyle( 
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                  )
                ],
              ),
            ),
          ),
          new SizedBox(
            width: 49.0,
            child: new Column(
                children: <Widget>[
                  new IconButton(icon: Icon(Icons.arrow_drop_up), onPressed: () {}),
                  new Text("$cart_prod_qty"),
                  new IconButton(icon: Icon(Icons.arrow_drop_down), onPressed: () {})
                ],
            )
          )
        ],
      ),
    );
  }

}