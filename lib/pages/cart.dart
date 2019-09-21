import 'package:flutter/material.dart';

//my imports
import '../components/cart_products.dart';

class Cart extends StatefulWidget {
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        elevation: 0.1,
        backgroundColor: Colors.red,
        title: Text("Cart"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search, color: Colors.white), onPressed: () {}),
        ],
      ),
      
      body:new Cart_products(),

      bottomNavigationBar: new Container(
          color: Colors.white,
          child: Row(
            children: <Widget>[
              Expanded(
                child: ListTile(
                  title: Text("Total"),
                  subtitle: Text("\$238"),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  child:
                      Text("Check out", style: TextStyle(color: Colors.white)),
                  color: Colors.red,
                ),
              ),
            ],
          )),
    );
  }
}
