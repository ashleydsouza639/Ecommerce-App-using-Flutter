import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter_course/pages/home.dart';
import 'components/horizontal_listview.dart';
import 'components/products.dart';
import'pages/cart.dart';

import './pages/login.dart';
import './pages/home.dart';

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    )
  );
}

