import 'package:json_annotation/json_annotation.dart';

part 'liveModel.g.dart';

@JsonSerializable()
class LiveModel {
  String name;
  int matches;
  List<Match> match;
  LiveModel(this.name,this.match,this.matches);
  factory LiveModel.fromJson( Map<String,dynamic> json ) => _$LiveModelFromJson(json);
}

@JsonSerializable()
class Match {
  int id;
  String home;
  String homegoal;
  String away;
  String awaygoal;
  String date;
  String time;
  Match(this.id,this.home,this.homegoal,this.away,this.awaygoal,this.date,this.time);
  factory Match.fromJson( Map<String,dynamic> json ) => _$MatchFromJson(json);
}