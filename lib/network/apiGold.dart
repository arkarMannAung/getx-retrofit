import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../models/goldData.dart';

part 'apiGold.g.dart';

@RestApi(baseUrl: "http://sport.fruitysense.com/api")
abstract class ApiGold {
  factory ApiGold(Dio dio, {String baseUrl}) = _ApiGold;

  @GET("/gold-prices")
  Future<List<GoldData>> getGoldData();
}
