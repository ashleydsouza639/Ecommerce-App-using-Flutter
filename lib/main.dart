import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_course/pages/home.dart';
import 'components/horizontal_listview.dart';
import 'components/products.dart';
import'pages/cart.dart';

import './pages/login.dart';
//import './pages/home.dart';
import 'package:firebase_auth/firebase_auth.dart';


void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
       title: 'Flutter Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(),
    )
  );
}

/*
   firebase_auth: ^0.11.1+11
  cloud_firestore: ^0.12.7
  google_sign_in: ^4.0.7
  shared_preferences: ^0.5.3+4
  fluttertoast: ^3.1.3


 
 */