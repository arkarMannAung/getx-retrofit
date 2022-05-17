import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:new_project/network/apiGold.dart';

class GoldPrice extends StatelessWidget {
  GoldPrice({ Key? key }) : super(key: key);
  final _ctrl = Get.put(GoldPriceController());
  // on other page get this dependency
  // final GoldPriceController _example = Get.find();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Gold Price'),centerTitle: true),
      body: 
        _ctrl.goldData.length > 1 ? 
        const Center(child: CircularProgressIndicator(),):
        Obx( ()=> ListView.builder(
        itemCount: _ctrl.goldData.length,
        itemBuilder: (context,i){
          // List<GoldData> tmp = List.generate(150, (i) => GoldData(
          //   unit: 'Unit Test '+i.toString(), buy: i * 125466, sell: i * 125466
          // ));
          // ignore: invalid_use_of_protected_member
          List tmp = _ctrl.goldData.value;
          return ListTile(
            title: Text(tmp[i].unit),
            subtitle: Row(children: [
              Text('buy '+tmp[i].buy.toString()),
              const SizedBox(width: 10,),
              Text('sell '+tmp[i].sell.toString()),
            ]),
          ) ;
        }
      ) ),
    );
  }
}

// class GoldData {
//   String unit;
//   int buy;
//   int sell;
//   GoldData({required this.unit,required this.buy,required this.sell});
// }

class GoldPriceController extends GetxController {
  Logger log = Logger();
  RxList goldData = [].obs;
  @override
  void onReady() {
    log.i("Ready");
    super.onReady();
  }
  @override
  void onInit() async{
    log.i("Api Get" + DateTime.now().toString());
    ApiGold(Dio())
    .getGoldData()
    .then((value){
      goldData(value);
      log.e("Api Success" + DateTime.now().toString());
    });
    super.onInit();
  } 
}