import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home_Controller extends GetxController
{
  RxDouble f = 0.0.obs;
  RxList pat = [].obs;
  Rx<TextEditingController> txtTask = TextEditingController().obs;
  Rx<TextEditingController> txtCategory = TextEditingController().obs;
}