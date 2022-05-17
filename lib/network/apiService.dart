import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

import '../models/liveModel.dart';

part 'apiService.g.dart';

@RestApi(baseUrl: "http://sport.fruitysense.com/api/")

abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/today-live-score")
  Future<List<LiveModel>> getLiveScore();
}
