import 'dart:convert';

RankingModel rankingModelFromJson(String str) => RankingModel.fromJson(json.decode(str));

String rankingModelToJson(RankingModel data) => json.encode(data.toJson());

class RankingModel {
    RankingModel({
        this.id,
        this.theme,
        this.time,
        this.player,
        this.position,
    });

    String id;
    String theme;
    int time;
    String player;
    int position;

    factory RankingModel.fromJson(Map<String, dynamic> json) => RankingModel(
        id: json["id"],
        theme: json["theme"],
        time: json["time"],
        player: json["player"],
        position: json["position"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "theme": theme,
        "time": time,
        "player": player,
        "position": position
    };
}