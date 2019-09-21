/*
To get the list of available emulator

emulator -list-avds

To open a emulator

git push -f origin master
git remote set-url origin https://github.com/ashleydsouza639/ecommerce-app-using-flutter.git
git remote add origin https://github.com/ashleydsouza639/Ecommerce-App-using-Flutter.git
git commit -m msg


echo "# ecommerce-app-using-flutter" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin https://github.com/ashleydsouza639/ecommerce-app-using-flutter.git
git push -u origin master


C:\Users\arif>keytool -list -v -alias androiddebugkey -keystore %USERPROFILE%\.a
ndroid\debug.keystore
Enter keystore password:
Alias name: androiddebugkey
Creation date: Jun 26, 2019
Entry type: PrivateKeyEntry
Certificate chain length: 1
Certificate[1]:
Owner: C=US, O=Android, CN=Android Debug
Issuer: C=US, O=Android, CN=Android Debug
Serial number: 1
Valid from: Wed Jun 26 19:03:42 IST 2019 until: Fri Jun 18 19:03:42 IST 2049
Certificate fingerprints:
         MD5:  1F:41:7F:B4:7B:5D:99:4E:B3:D6:74:36:C3:D4:0A:BD
         SHA1: 3B:40:1F:99:78:7B:AF:10:32:EF:4C:EC:C7:AC:6C:CF:1C:1E:64:9C
         SHA256: 3D:56:66:97:E2:01:4E:22:66:99:DF:9F:2E:5D:F6:B3:EB:62:C3:46:17:
77:7A:EF:1C:96:7C:DB:89:03:6E:48
         Signature algorithm name: SHA1withRSA
         Version: 1

1
 import 'package:flutter/material.dart';

void main(){
  runApp(
      MaterialApp(
       home: Container(       //center()
       color:Colors.white,
        child:Text('hello'),
      )
    )
  );
} */

/*2. Row and Column - error when content is bigger than screen. n
not scrollable.so use ListView
import 'package:flutter/material.dart';
void main(){
  runApp(
      MaterialApp(
       home: Container(       //center()
       color:Colors.white,
        child:Column(      //Row
          children: <Widget>[
           Text('Hello World'),
           Text('Hellow word 2'), 
          ],
          ),
      )
    )
  );
} */


/* 3. ListView
import 'package:flutter/material.dart';
void main(){
  runApp(
      MaterialApp(
       home: Container(       //center()
       color:Colors.white,
        child:ListView(      //Row
          children: <Widget>[
           Text('Hello World'),
           Text('Hellow word 2'), 
          ],
          ),
      )
    )
  );
} */

//4. GridView.count(crossAxisCount/noofcolumns:n)
//import 'package:flutter/material.dart';
/* void main(){
  runApp(
      MaterialApp(
       home: Container(       //center()
       color:Colors.white,
        child:GridView.count(crossAxisCount: 3,)(      //Row
          children: <Widget>[
           Text('Hello World'),
           Text('Hellow word 2'),    //123
                                    //456
           Text('Hellow word 2'), 
           Text('Hellow word 2'), 
           Text('Hellow word 2'), 
           Text('Hellow word 2'), 
          ],
          ),
      )
    )
  );
} */

//5.Stateless and Stateful widget
/* import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
//import 'home.dart' where Homepagr() is defined

void main(){
runApp(
  MaterialApp(
    home:HomePage()
  )
 );
}

//Stateless widget never chaange. eg:Icoon,Text,IconButton 
class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Container(
      color:Colors.pink,
      child:Icon(Icons.person),
      child:Text('hey',style:TextStyle(color:Colors.white),
      ),
    );
  }
} */


//Stateful widget is dynamic. it can change when user interacts with it eg:TextField,inkwell,Form,Radio etc

/*
What's the point?
A stateful widget is implemented by two classes: a subclass of StatefulWidget and a subclass of State.
The state class contains the widget’s mutable state and the widget’s build() method.
When the widget’s state changes, the state object calls setState(), telling the framework to redraw the widget.

class FavoriteWidget extends StatefulWidget {
  @override
  _FavoriteWidgetState createState() => _FavoriteWidgetState();
}
class _FavoriteWidgetState extends State<FavoriteWidget> {
  // ···
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(0),
          child: IconButton(
            icon: (_isFavorited ? Icon(Icons.star) : Icon(Icons.star_border)),
            color: Colors.red[500],
            onPressed: _toggleFavorite,
          ),
        ),
        SizedBox(
          width: 18,
          child: Container(
            child: Text('$_favoriteCount'),
          ),
        ),
      ],
    );
  }
}


 import 'package:flutter/material.dart';
class HomePage extends StatefulWidget{


  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{
  Widget build(BuildContext context){
    return Container(
      child:Icon(Icons.person),
      child:Text("ima stateful widgets"),
    );
  }
} */

