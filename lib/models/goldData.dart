import 'package:json_annotation/json_annotation.dart';

part 'goldData.g.dart';

@JsonSerializable()
class GoldData {
String unit;
  int buy;
  int sell;
  GoldData(this.unit,this.buy,this.sell);
  factory GoldData.fromJson( Map<String,dynamic> json ) => _$GoldDataFromJson(json);
}