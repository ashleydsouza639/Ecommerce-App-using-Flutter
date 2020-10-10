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
import '../components/basicshape.dart';

class InsertData extends StatefulWidget {
  @override
  _InsertDataState createState() => _InsertDataState();
}

class _InsertDataState extends State<InsertData> {
  String _locationMessage = "";
  String _confirmMessage = "";

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

    await fltrNotification.show(0, "Ecommerce", "Welcome to our ecommerce App",
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
          RaisedButton(
            child: Text('Flutter Notification'),
            onPressed: () {
              _showNotification();
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
          RaisedButton(
            child: Text('Basic Graphic Primitives'),
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => BasicShape())),
          ),
        ],
      )), //center
    );
  }

  void createRecord() async {
    await databaseReference
        .collection("users")
        .document("1")
        .setData({'name': name, 'email': email});

    DocumentReference ref = await databaseReference
        .collection("users")
        .add({'name': name, 'email': email});
    print(ref.documentID);

    setState(() {
      _confirmMessage = "Your order is confirmed. We will get back to you";
    });
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
