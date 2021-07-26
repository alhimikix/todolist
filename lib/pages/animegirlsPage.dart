import 'package:flutter/cupertino.dart';

class AnimeGirlsPage extends StatefulWidget {
  const AnimeGirlsPage({Key? key}) : super(key: key);

  @override
  _AnimeGirlsPageState createState() => _AnimeGirlsPageState();
}

class _AnimeGirlsPageState extends State<AnimeGirlsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Hero(tag: "1", child: Image.asset("images/animeGirl.jpg")),

      ],
    );
  }
}
