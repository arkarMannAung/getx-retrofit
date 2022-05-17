import 'package:get/get.dart';
import 'package:new_project/view/home.dart';
import 'package:new_project/view/goldPrice.dart';
import 'package:new_project/view/register.dart';

List<GetPage> routes =  [
  GetPage(name: '/', page: ()=> Home() ),
  GetPage(name: '/register', page: ()=> Register() ),
  GetPage(name: '/gold-price', page: ()=> GoldPrice() ),
];