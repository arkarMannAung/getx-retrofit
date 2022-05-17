import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/controller/controller.dart';
import 'package:new_project/route.dart';

void main() {
  Get.put(Controller());
  runApp(GetMaterialApp(
    initialRoute: '/',
    getPages: routes,
    debugShowCheckedModeBanner: false,
  ));
}