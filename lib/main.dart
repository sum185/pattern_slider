import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pattern_slider/screen/view/home%20page/home_page.dart';
void main()
{
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {
        'home':(p0) => Home_Page()
      },
    )
  );
}