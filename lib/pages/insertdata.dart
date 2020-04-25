//insert data of users
import 'package:flutter/material.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

import './login.dart';
import './auth.dart';

class InsertData extends StatelessWidget {
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
          
          
         
        ],
      )), //center
    );
  }

  void createRecord() async {
    await databaseReference.collection("books")
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
