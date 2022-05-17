import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:new_project/controller/controller.dart';

class Register extends StatelessWidget {
  Register({ Key? key }) : super(key: key);
  final Controller _ctrl = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Obx( ()=> Text('Register Page -> '  + _ctrl.count.value.toString()) ), 
      ),
      body: Column(
          children: [
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/');
                    },
                    child: const Text('Home Page')
                ),
                ElevatedButton(
                    onPressed: () {
                      _ctrl.count( _ctrl.count.value + 1 );
                    },
                    child: const Text('++ Count')
                ),
              ],mainAxisAlignment: MainAxisAlignment.spaceAround,
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        )
    );
  }
}