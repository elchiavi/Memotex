import 'dart:convert';

CardModel cardModelFromJson(String str) => CardModel.fromJson(json.decode(str));

String cardModelToJson(CardModel data) => json.encode(data.toJson());

class CardModel {
    CardModel({
        this.isFaceUp = false,
        this.isMatched = false,
        this.content,
    });

    bool isFaceUp;
    bool isMatched;
    String content;

    factory CardModel.fromJson(Map<String, dynamic> json) => CardModel(
        isFaceUp: json["isFaceUp"],
        isMatched: json["isMatched"],
        content: json["content"],
    );

    Map<String, dynamic> toJson() => {
        "isFaceUp": isFaceUp,
        "isMatched": isMatched,
        "content": content,
    };
}