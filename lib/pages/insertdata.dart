//insert data of users
/*
import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
//mport 'package:geolocator/geolocator.dart';
//import 'package:geocoder/geocoder.dart';

import './login.dart';
import './auth.dart';            //we get name,email values from here

class InsertData extends StatelessWidget {
 

// _getLocation() async
//       {
//         Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
//         debugPrint('location: ${position.latitude}');
//         final coordinates = new Coordinates(position.latitude, position.longitude);
//         var addresses = await Geocoder.local.findAddressesFromCoordinates(coordinates);
//         var first = addresses.first;
//         print("${first.featureName} : ${first.addressLine}");
//       }

 
 
 
 
  final databaseReference = Firestore.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirm Order'),
      ),
      body: Center(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          RaisedButton(
            child: Text('Confirm order'),
            onPressed: () {
              createRecord();
            },
          ),
          

       InkWell(   //used to wrap ListTile dat doesnt hv ontap //any child of inkwell widget is tappable
            child:ListTile(
              title:Text("NAME: "+name),
              
            ) 
          ),

          
       InkWell(   //used to wrap ListTile dat doesnt hv ontap //any child of inkwell widget is tappable
            child:ListTile(
              title:Text("EMAIL: "+email),
              
            ) 
          ),

       InkWell(   //used to wrap ListTile dat doesnt hv ontap //any child of inkwell widget is tappable
            child:ListTile(
              title:Text("After pressing Confirm Order, we will reach out to you"),
              
            ) 
          ),

                  RaisedButton(
            child: Text('get Location'),
            onPressed: () {
                //_getCurrentLocation();
            },
          ),
           
          
         
        ],
      )), //center
    );
  }

  void createRecord() async {
    await databaseReference.collection("users")
        .document("1")
        .setData({
          'name': name,
          'email': email
        });

    DocumentReference ref = await databaseReference.collection("users")
        .add({
          'name': name,
          'email': email
        });
    print(ref.documentID);
  }

//   void getData() {
//     databaseReference
//         .collection("books")
//         .getDocuments()
//         .then((QuerySnapshot snapshot) {
//       snapshot.documents.forEach((f) => print('${f.data}}'));
//     });
//   }

//   void updateData() {
//     try {
//       databaseReference
//           .collection('books')
//           .document('1')
//           .updateData({'description': 'Head First Flutter'});
//     } catch (e) {
//       print(e.toString());
//     }
//   }

//   void deleteData() {
//     try {
//       databaseReference
//           .collection('books')
//           .document('1')
//           .delete();
//     } catch (e) {
//       print(e.toString());
//     }
//   }
// 
}
*/

// import 'package:flutter/material.dart';

// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:geocoder/geocoder.dart';

// import './login.dart';
// import './auth.dart'; //we get name,email values from here

// class InsertData extends StatefulWidget {
//   @override
//   _InsertDataState createState() => _InsertDataState();
// }

// class _InsertDataState extends State<InsertData> {
//   String _locationMessage = "";
//   String _confirmMessage = "";

//   void _getCurrentLocation() async {
//     Position position = await Geolocator()
//         .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
//     debugPrint('location: ${position.latitude}');
//     final coordinates = new Coordinates(position.latitude, position.longitude);
//     var addresses =
//         await Geocoder.local.findAddressesFromCoordinates(coordinates);
//     var first = addresses.first;
//     print("${first.featureName} : ${first.addressLine}");

//     setState(() {
//       _locationMessage = "${first.featureName} : ${first.addressLine}";
//     });
//   }

//   final databaseReference = Firestore.instance;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Confirm Order'),
//       ),
//       body: Center(
//           child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: <Widget>[
//           RaisedButton(
//             child: Text('Confirm order'),
//             onPressed: () {
//               createRecord();
//             },
//           ),
//           InkWell(
//               //used to wrap ListTile dat doesnt hv ontap //any child of inkwell widget is tappable
//               child: ListTile(
//             title: Text("NAME: " + name),
//           )),
//           InkWell(
//               //used to wrap ListTile dat doesnt hv ontap //any child of inkwell widget is tappable
//               child: ListTile(
//             title: Text("EMAIL: " + email),
//           )),
//           InkWell(
//               //used to wrap ListTile dat doesnt hv ontap //any child of inkwell widget is tappable
//               child: ListTile(
//             title: Text("ADDRESS: " + _locationMessage),
//           )),
//           RaisedButton(
//             child: Text('Get Location'),
//             onPressed: () {
//               _getCurrentLocation();
//             },
//           ),
//           InkWell(
//               //used to wrap ListTile dat doesnt hv ontap //any child of inkwell widget is tappable
//               child: ListTile(
//             title:
//                 Text("After pressing Confirm Order, we will reach out to you"),
//           )),
//           InkWell(
//               //used to wrap ListTile dat doesnt hv ontap //any child of inkwell widget is tappable
//               child: ListTile(
//             title: Text(_confirmMessage),
//           )),
//         ],
//       )), //center
//     );
//   }

//   void createRecord() async {
//     await databaseReference
//         .collection("users")
//         .document("1")
//         .setData({'name': name, 'email': email});

//     DocumentReference ref = await databaseReference
//         .collection("users")
//         .add({'name': name, 'email': email});
//     print(ref.documentID);

//     setState(() {
//       _confirmMessage = "Your order is confirmed. We will get back to you";
//     });
//   }
// }

import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoder/geocoder.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import './login.dart';
import './auth.dart'; //we get name,email values from here
import './product_details.dart';

class InsertData extends StatefulWidget {
  @override
  _InsertDataState createState() => _InsertDataState();
  //constructor called in product_details
  final prod_name;
  final prod_price;
  InsertData({this.prod_name, this.prod_price});
}

class _InsertDataState extends State<InsertData> {
  var _num;
  final numController = new TextEditingController();

  String _locationMessage = "";
  String _confirmMessage = "";
  String s = "";

  FlutterLocalNotificationsPlugin fltrNotification;

  @override
  void initState() {
    super.initState();
    var androidInitilize = new AndroidInitializationSettings('app_icon');
    var iOSinitilize = new IOSInitializationSettings();
    var initilizationsSettings =
        new InitializationSettings(androidInitilize, iOSinitilize);
    fltrNotification = new FlutterLocalNotificationsPlugin();
    fltrNotification.initialize(initilizationsSettings,
        onSelectNotification: notificationSelected);
  }

  Future _showNotification() async {
    var androidDetails = new AndroidNotificationDetails(
        "Channel ID", "Desi programmer", "This is my channel",
        importance: Importance.Max);
    var iSODetails = new IOSNotificationDetails();
    var generalNotificationDetails =
        new NotificationDetails(androidDetails, iSODetails);

    await fltrNotification.show(
        0,
        "Ecommerce",
        "Your order is confirmed. mobile No: $_num",
        generalNotificationDetails);
  }

  void _getCurrentLocation() async {
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    debugPrint('location: ${position.latitude}');
    final coordinates = new Coordinates(position.latitude, position.longitude);
    var addresses =
        await Geocoder.local.findAddressesFromCoordinates(coordinates);
    var first = addresses.first;
    print("${first.featureName} : ${first.addressLine}");

    setState(() {
      _locationMessage = "${first.featureName} : ${first.addressLine}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Confirm Order'),
      ),
      body: Center(
          child: ListView(
        padding: const EdgeInsets.all(8),
        children: <Widget>[
          RaisedButton(
            child: Text('Confirm order'),
            onPressed: () {
              createRecord();
              setState(() {
                _num = numController.text;
              });
              _showNotification();
            },
          ),
          RaisedButton(
            child: Text('Delete order'),
            onPressed: () {
              deleteRecord();
            },
          ),
          InkWell(
              //used to wrap ListTile dat doesnt hv ontap //any child of inkwell widget is tappable
              child: ListTile(
            title: Text("NAME: " + name),
          )),
          InkWell(
              //used to wrap ListTile dat doesnt hv ontap //any child of inkwell widget is tappable
              child: ListTile(
            title: Text("EMAIL: " + email),
          )),
          TextField(
              keyboardType: TextInputType.number, //.text
              controller: numController,
              decoration:
                  InputDecoration(hintText: 'Enter your mobile number')),
          InkWell(
              //used to wrap ListTile dat doesnt hv ontap //any child of inkwell widget is tappable
              child: ListTile(
            title: Text("ADDRESS: " + _locationMessage),
          )),
          RaisedButton(
            child: Text('Get Location'),
            onPressed: () {
              _getCurrentLocation();
            },
          ),
          InkWell(
              //used to wrap ListTile dat doesnt hv ontap //any child of inkwell widget is tappable
              child: ListTile(
            title:
                Text("After pressing Confirm Order, we will reach out to you"),
          )),
          InkWell(
              //used to wrap ListTile dat doesnt hv ontap //any child of inkwell widget is tappable
              child: ListTile(
            title: Text(_confirmMessage),
          )),
        ],
      )), //center
    );
  }

  final databaseReference = Firestore.instance;

  void createRecord() async {
    // await databaseReference
    //     .collection("users")
    //     .document("1")
    //     .setData({'name': name, 'email': email});
    DocumentReference ref = Firestore.instance.collection('users').document();

    ref.setData({
      'name': name,
      'email': email,
      'id': ref.documentID,
      //'address': _locationMessage,
      'productName': widget.prod_name,
      'productPrice': widget.prod_price
    });
    s = ref.documentID;
    setState(() {
      _confirmMessage = "Your order is confirmed. We will get back to you";
    });
  }

  void deleteRecord() {
    //final databaseReference = Firestore.instance;
    try {
      databaseReference.collection('users').document(s).delete();
    } catch (e) {
      print(e.toString());
    }
  }

  Future notificationSelected(String payload) async {
    //     showDialog(
    //   context: context,
    //   builder: (context) => AlertDialog(
    //     content: Text("Notification : $payload"),
    //   ),
    // );
  }
}
