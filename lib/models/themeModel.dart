import 'dart:convert';
import 'dart:ui';

ThemeModel themeModelFromJson(String str) => ThemeModel.fromJson(json.decode(str));

String themeModelToJson(ThemeModel data) => json.encode(data.toJson());

class ThemeModel {
    ThemeModel({
        this.name,
        this.emojis,
        this.numbersOfPairs,
        this.id,
        this.color
    });

    String name;
    List<String> emojis;
    int numbersOfPairs;
    int id;
    Color color;

    factory ThemeModel.fromJson(Map<String, dynamic> json) => ThemeModel(
        name: json["name"],
        emojis: List<String>.from(json["emojis"].map((x) => x)),
        numbersOfPairs: json["numbersOfPairs"],
        id: json["id"],
        color: json["color"]
    );

    Map<String, dynamic> toJson() => {
        "name": name,
        "emojis": List<dynamic>.from(emojis.map((x) => x)),
        "numbersOfPairs": numbersOfPairs,
        "id": id,
        "color": color
    };
}
