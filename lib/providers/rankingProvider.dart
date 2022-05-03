import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:memotex/models/rankingModel.dart';

class RankingProvider {

  final String title;

  final String _url = 'https://memotex-64515-default-rtdb.firebaseio.com';

  RankingProvider({this.title});

  Future<List<RankingModel>> getRanking() async {

    final url = '$_url/ranking.json';
    final resp = await http.get(Uri.parse(url));

    final Map<String, dynamic> decodedData = json.decode(resp.body);
    final List<RankingModel> rankings = [];
    if (decodedData == null) return [];
    decodedData.forEach((id, rank) {
      final rankTemp = RankingModel.fromJson(rank);
      if (rankTemp.theme == this.title) {
        rankTemp.id = id;
        rankings.add(rankTemp);
      }
    });    
    rankings.sort((a, b) => a.time.toString().compareTo(b.time.toString()));
    return rankings;
  }
}