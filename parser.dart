import 'package:webfeed/webfeed.dart';
import 'package:html/parser.dart';
import 'package:html/dom.dart';
import 'dart:async';
import 'package:http/http.dart';

class Parser {

  final String urlSite = "http://www.france24.com/fr/actualites/rss";

  final String rssBFM = "https://bfmbusiness.bfmtv.com/rss/votre-argent/votre-argent-rss/";

  Future chargerRSS() async{
    final reponse = await get(urlSite);
    if(reponse.statusCode == 200){
      final feed = RssFeed.parse(reponse.body);
      print("$feed at parser");
    }
    else{
      print("Erreur: ${reponse.statusCode}");
    }
  }

}