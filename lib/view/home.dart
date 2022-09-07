import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:new_project/controller/controller.dart';
import 'package:new_project/network/apiService.dart';
import 'package:logger/logger.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  final Controller _ctrl = Get.find();
  Logger log = Logger();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title:
              Obx(() => Text('Home Page -> ' + _ctrl.count.value.toString())),
        ),
        body: Column(
          children: [
            // ElevatedButton(
            //   onPressed: (){
            //     ApiService(Dio())
            //     .getLiveScore()
            //     .then((value){
            //       log.d(value[0].match[0].date);
            //     })
            //     .onError((error, stackTrace){
            //       log.e(error);
            //     });
            //   },
            //   child: const Text('get Data')
            // )
            Row(
              children: [
                ElevatedButton(
                    onPressed: () {
                      Get.toNamed('/register');
                    },
                    child: const Text('Register Page')),
                ElevatedButton(
                    onPressed: () {
                      _ctrl.count(_ctrl.count.value + 1);
                    },
                    child: const Text('++ Count')),
              ],
              mainAxisAlignment: MainAxisAlignment.spaceAround,
            )
          ],
          mainAxisAlignment: MainAxisAlignment.center,
        ));
  }
}
