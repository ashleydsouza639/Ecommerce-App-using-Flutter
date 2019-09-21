import 'package:flutter/material.dart';

import 'package:carousel_pro/carousel_pro.dart';
import '../components/horizontal_listview.dart';
import '../components/products.dart';
import 'cart.dart';
import 'home.dart';
import './login.dart';
import './auth.dart';
<<<<<<< HEAD

=======
>>>>>>> frontend done

class HomePage extends StatefulWidget{
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  
  Widget build(BuildContext context){
  Widget image_carousel = new Container(
    height:200.0,
    child:new Carousel(
       
      boxFit: BoxFit.cover,
      images:[
        AssetImage("images/c1.jpg"),
           AssetImage("images/m1.jpeg"),
           AssetImage("images/m2.jpg"),
           AssetImage("images/w1.jpeg"),
          AssetImage("images/w3.jpeg"),
           
      ],
      autoplay: false,
    //  animationCurve: Curves.fastOutSlowIn,
     // animationDuration: Duration(milliseconds: 1000),
       dotSize: 4.0,
       dotColor: Colors.red,
      indicatorBgPadding: 2.0,
      )
   );
    return Scaffold(
      appBar:new AppBar(
      elevation:0.1,
      backgroundColor:Colors.red,
      title:Text("Klavona"),
      actions: <Widget>[
        IconButton(icon:Icon(Icons.search,color:Colors.white),onPressed:(){}),
        IconButton(icon:Icon(Icons.shopping_cart,color:Colors.white),onPressed:()=>
          Navigator.push(context, MaterialPageRoute(builder:(context)=>Cart()))
        ),
      ],
      ),
      drawer:Drawer(
        child:ListView(children: <Widget>[
          //header
          UserAccountsDrawerHeader(
            accountName:Text(name),
            accountEmail:Text(email),
            currentAccountPicture:GestureDetector(
              child: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
            decoration: BoxDecoration(
              color:Colors.red,
            ),
          ),//1
          
          //body

          InkWell(   //used to wrap ListTile dat doesnt hv ontap //any child of inkwell widget is tappable
            onTap:(){},
            child:ListTile(
              title:Text("Home Page"),
              leading:Icon(Icons.home),
            ) 
          ),
          
          InkWell(   //used to wrap ListTile dat doesnt hv ontap
            onTap:(){},
            child:ListTile(
              title:Text("My account"),
              leading:Icon(Icons.person),
            ) 
          ),

          InkWell(   //used to wrap ListTile dat doesnt hv ontap
            onTap:(){},
            child:ListTile(
              title:Text("My Orders"),
              leading:Icon(Icons.shopping_basket),
            ) 
          ),

            InkWell(   //used to wrap ListTile dat doesnt hv ontap
            onTap:(){
               Navigator.push(context, MaterialPageRoute(builder:(context)=>Cart()));
            },
            child:ListTile(
              title:Text("Shopping Cart"),
              leading:Icon(Icons.shopping_cart),
            ) 
          ),


          InkWell(   //used to wrap ListTile dat doesnt hv ontap
            onTap:(){},
            child:ListTile(
              title:Text("Favourites"),
              leading:Icon(Icons.favorite),
            ) 
          ),
        Divider(),
          InkWell(   //used to wrap ListTile dat doesnt hv ontap
            onTap:(){},
            child:ListTile(
              title:Text("Settings"),
              leading:Icon(Icons.settings),
            ) 
          ),

          InkWell(   //used to wrap ListTile dat doesnt hv ontap
            onTap:(){},
            child:ListTile(
              title:Text("About"),
              leading:Icon(Icons.help),
            ) 
          ),
          
          RaisedButton(
            onPressed: () {
              signOutGoogle();
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) {return LoginPage();}), ModalRoute.withName('/'));
            },
            color: Colors.deepPurple,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Sign Out',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)),
          )


          RaisedButton(
            onPressed: () {
              signOutGoogle();
              Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) {return LoginPage();}), ModalRoute.withName('/'));
            },
            color: Colors.deepPurple,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Sign Out',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            elevation: 5,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)),
          )


          ],
          )
      ),
      
      body:Column(children: <Widget>[
        //imagee carousel
        image_carousel,
         //padding widget
        Padding(
        padding:const EdgeInsets.all(8.0),
        child:Text('Categories'),
        ),

        //Horizontal list view begins here
        HorizontalList(),

          //padding widget
        new Padding(padding: const EdgeInsets.all(20.0),
            child: new Text('Recent products'),),

          //grid view
        Flexible(
            child: Products(),
          )


      ],)
    );
  }
}
