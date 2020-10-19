//display single product page dat comes after clicking a recent product
import 'package:flutter/material.dart';
import 'home.dart';
import './insertdata.dart';
class ProductDetails extends StatefulWidget {
  _ProductDetailsState createState() => _ProductDetailsState();
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  //constructor called in components/products.dart
  ProductDetails(
      {this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picture});
}

class _ProductDetailsState extends State<ProductDetails> {
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
            elevation: 0.1,
            backgroundColor: Colors.red,
            title: InkWell(
              onTap:()=>Navigator.push(context, MaterialPageRoute(builder:(context)=>HomePage())),
              child: Text("ShopApp")),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.search, color: Colors.white),
                  onPressed: () {}),
              IconButton(
                  icon: Icon(Icons.shopping_cart, color: Colors.white),
                  onPressed: () {}),
            ]),

        //body
        body: ListView(
          children: <Widget>[
            Container(
              height: 300.0,
              child: GridTile(
                child: Container(
                  color: Colors.white,
                  child: Image.asset(widget
                      .product_detail_picture), //widget is like super keyword java used to acces attribute of parent class(above class properties)
                ),
                footer: Container(
                  color: Colors.white,
                  child: ListTile(
                    leading: Text(
                      widget.product_detail_name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 16.0),
                    ),
                    title: Row(
                      children: <Widget>[
                        Expanded(
                            // A widget that expands a child of a Row, Column, or Flex so that the child fills the available space.
                            child: Text(
                          "\$${widget.product_detail_old_price}",
                          style: TextStyle(
                              decoration: TextDecoration.lineThrough,
                              color: Colors.grey),
                        )),
                        Expanded(
                            child: Text(
                          "\$${widget.product_detail_new_price}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.red),
                        ))
                      ],
                    ),
                  ),
                ),
              ),
            ),

//         the first buttions
            Row(
              children: <Widget>[
//           ====size button============
                Expanded(
                  //alert using showDialog(context,builder:()returns AlertDialog)  and Alertdialogon pressing size button
                  child: MaterialButton(
            
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return new AlertDialog(
                                title: Text("size"),
                                content: Text("Choose the size"),
                                actions: <Widget>[
                                  MaterialButton(onPressed: () => Navigator.of(context).pop(context),
                                  child:Text('close'),
                                  )
                                ],
                              );
                            });  //showDialog();
                      },
                      color: Colors.white,
                      textColor: Colors.grey,
                      elevation: 0.2,
                      child: Row(children: <Widget>[
                        Expanded(child: Text("Size")),
                        Expanded(child: new Icon(Icons.arrow_drop_down)),
                      ])),
                ),

                //           ====color button============
                Expanded(
                  child: MaterialButton(
           onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return new AlertDialog(
                                title: Text("size"),
                                content: Text("Choose the size"),
                                actions: <Widget>[
                                  MaterialButton(onPressed: () => Navigator.of(context).pop(context),
                                  child:Text('close'),
                                  )
                                ],
                              );
                            });  //showDialog();
                      },
                                 color: Colors.white,
                      textColor: Colors.grey,
                      elevation: 0.2,
                      child: Row(children: <Widget>[
                        Expanded(child: Text("Color")),
                        Expanded(child: new Icon(Icons.arrow_drop_down)),
                      ])),
                ),
                //           ====quantity button============
                Expanded(
                  child: MaterialButton(
                           onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return new AlertDialog(
                                title: Text("size"),
                                content: Text("Choose the size"),
                                actions: <Widget>[
                                  MaterialButton(onPressed: () => Navigator.of(context).pop(context),
                                  child:Text('close'),
                                  )
                                ],
                              );
                            });  //showDialog();
                      },
            
                      color: Colors.white,
                      textColor: Colors.grey,
                      elevation: 0.2,
                      child: Row(children: <Widget>[
                        Expanded(child: Text("Qty")),
                        Expanded(child: new Icon(Icons.arrow_drop_down)),
                      ])),
                ),
              ],
            ),

//         the second buttions
            Row(
              children: <Widget>[
//           ====buy button button============
                Expanded(
                  child: MaterialButton(
                    onPressed:(){
                         Navigator.push(context, MaterialPageRoute(builder:(context)=>InsertData(prod_name:widget.product_detail_name,prod_price:widget.product_detail_new_price)));
                    },
                    color: Colors.red,
                    textColor: Colors.white,
                    elevation: 0.2,
                    child: new Text("Buy Now"),
                  ),
                ),




                IconButton(
                    icon: Icon(Icons.add_shopping_cart), onPressed: () {}),

                IconButton(icon: Icon(Icons.favorite_border), onPressed: () {}),
              ],
            ),
            Divider(),
            ListTile(
              title:Text("Product details"),
              subtitle:Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
              ),
            Divider(),
            Row(
              children: <Widget>[
                Padding(
                  padding:const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
                  child: Text("Product name",style:TextStyle(color:Colors.grey))
                ),
                Padding(
                  padding:const EdgeInsets.all(5.0),
                  child: Text("${widget.product_detail_name}",style:TextStyle(color:Colors.black))
                ),
              ]
            ),
            Divider(),
            //prudct brand create
            Row(
              children: <Widget>[
                Padding(
                  padding:const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
                  child: Text("Product brand",style:TextStyle(color:Colors.grey))
                ),
                Padding(
                  padding:const EdgeInsets.all(5.0),
                  child: Text("${widget.product_detail_name}",style:TextStyle(color:Colors.black))
                ),
              ]
            ),
        
            Divider(),
                         
            Row(
              children: <Widget>[
                Padding(
                  padding:const EdgeInsets.fromLTRB(12.0,5.0,5.0,5.0),
                  child: Text("Product condition",style:TextStyle(color:Colors.grey))
                ),
                Padding(
                  padding:const EdgeInsets.all(5.0),
                  child: Text("${widget.product_detail_name}",style:TextStyle(color:Colors.black))
                ),
              ]
            ),
            Divider(),
            Padding(
              padding:const EdgeInsets.all(8.0),
              child:Text("Similar products"),
              ),
//====================Similar product section=====
             Container(
               height:360.0,
             child:Similar_products(),
             ),
            ],
            ),
          
      
        );
  }
}


class Similar_products extends StatefulWidget{
   _Similar_productsState createState()=>_Similar_productsState();
}

class _Similar_productsState extends State<Similar_products>{
    var product_list = [
    //array of map
    {
      "name": "Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Shoes",
      "picture": "images/products/shoe1.jpg",
      "old_price": 120,
      "price": 85,
    },
    {
      "name": "Hills",
      "picture": "images/products/hills1.jpeg",
      "old_price": 120,
      "price": 85,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}


class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price,
  });

  @override 
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  //here we are passig the values of the product to the pruduct ddetails page
                  builder: (context) => new ProductDetails( product_detail_name : prod_name,
                                                             product_detail_new_price:  prod_price,
                                                             product_detail_old_price:  prod_old_price,
                                                             product_detail_picture: prod_picture                       
                                                          )
                       )
                  ),   
              child: GridTile(
                  footer: Container(
                    color: Colors.white,
                    child:Row(
                      children: <Widget>[
                        Expanded(
                         child:Text(prod_name,style:TextStyle(fontWeight:FontWeight.bold,fontSize:16.0))
                        ),
                        Text("${prod_price}",style:TextStyle(fontWeight: FontWeight.bold,color:Colors.red))
                      ],)
                  ),
                  child: Image.asset(
                    prod_picture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
