import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "Annisa Apps",
    home: new HalamanSatu(),
  ));
}

class HalamanSatu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.yellow[200],
        leading: new Icon(
          Icons.home,
          color: Colors.black,
        ),
        title: new Center(
          child: new Text(
            "Annisa Apps",
            style: new TextStyle(
                color: Colors.black, fontFamily: "Serif", fontSize: 20.0),
          ),
        ),
        actions: <Widget>[
          new Icon(
            Icons.search,
            color: Colors.black,
          )
        ],
      ),
      body: new Container(
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            new CardSaya(
              icon: Icons.home,
              teks: "Home",
              warnaIcon: Colors.black,
            ),
            new CardSaya(
              icon: Icons.browse_gallery_rounded,
              teks: "Browse",
              warnaIcon: Colors.black,
            ),
            new CardSaya(
              icon: Icons.notifications,
              teks: "Notif",
              warnaIcon: Colors.black,
            ),
            new CardSaya(
              icon: Icons.message,
              teks: "Message",
              warnaIcon: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

class CardSaya extends StatelessWidget {
  const CardSaya(
      {required this.icon, required this.teks, required this.warnaIcon});
  final IconData icon;
  final String teks;
  final Color warnaIcon;

  @override
  Widget build(BuildContext context) {
    return new Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: new Column(
          children: <Widget>[
            new Icon(
              icon,
              size: 50.0,
              color: warnaIcon,
            ),
            new Text(
              teks,
              style: new TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
    );
  }
}
