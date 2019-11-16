import 'package:flutter/material.dart';
import 'dart:async';
import 'package:webfeed/webfeed.dart';
import 'package:financy_app/modele/parser.dart';

class Home extends StatefulWidget{
  @override
  _Home createState() {
    // TODO: implement createState
    return new _Home();
  }
}

class _Home extends State<Home>{

  RssFeed feed;

  final String appTitle = "Financy";
  final Color mainColor = Color(0xFF2531EC);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    parse();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: Text("Financy"),
        centerTitle: true,
        elevation: 0.0,
        actions: <Widget>[
          new IconButton(
            icon: Icon(Icons.refresh, color: Colors.white),
            onPressed: (){
              setState(() {
                print("///Refresh///");
              });
            },
          ),
        ],
      ),


    );
  }

  Future<Null> parse() async {
    RssFeed recu = await Parser().chargerRSS();
    if(recu != null){
      setState(() {
        feed = recu;
        print(feed.items.length);
      });
    }
    else{
      print("Erreur at Home: feed vide");
    }
  }

}