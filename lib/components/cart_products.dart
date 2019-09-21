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
      "price": 85,
      "size": "M",
      "color": "Red",
      "quantity": 1,
    },
  ];

  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: products_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_prod_name: products_on_the_cart[index]["name"],
            cart_prod_color: products_on_the_cart[index]["color"],
            cart_prod_qty: products_on_the_cart[index]["qty"],
            cart_prod_size: products_on_the_cart[index]["size"],
            cart_prod_price: products_on_the_cart[index]["price"],
            cart_prod_picture: products_on_the_cart[index]["picture"],
          );
        });
  }
}

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
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(cart_prod_picture, width: 80.0, height: 80.0),

        //====Title section
        title: Text(cart_prod_name),

        //Subtitle section
        subtitle: Column(
          children: <Widget>[
            //row inside the column
            Row(children: <Widget>[
              //===this secction of for the peoductsize
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Size: "),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child:
                    Text(cart_prod_size, style: TextStyle(color: Colors.red)),
              ),

//===this secction of for the product color
              Padding(
                padding: const EdgeInsets.fromLTRB(2.0, 8.0, 8.0, 8.0),
                child: Text("Color"),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child:
                    Text(cart_prod_color, style: TextStyle(color: Colors.red)),
              ),
            ]
            ),
            //this section is for product price
            Container(
                alignment: Alignment.topLeft,
                child: Text("$cart_prod_price",
                  style: TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.red),
                ))
          ],
        ),
        trailing:Column(children: <Widget>[
          IconButton(icon:Icon(Icons.arrow_drop_up),onPressed:(){}),

        ],)
      ),
    );
  }


}
