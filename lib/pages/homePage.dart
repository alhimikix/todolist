import 'package:flutter/material.dart';

class OrdersPage extends StatefulWidget {
  const OrdersPage({Key? key}) : super(key: key);

  @override
  _OrdersPageState createState() => _OrdersPageState();
}

class _OrdersPageState extends State<OrdersPage> {

  var _categories = [
    {'id': "0", 'text': "Anime"},
    {'id': "1", 'text': "Anime1"},
    {'id': "2", 'text': "Anime3"},
    {'id': "3", 'text': "Anime4"},
    {'id': "4", 'text': "Anime2"},
  ];

  Widget _formatTile(elem) {
    //developer.log(elem.toString());
    return Card(
      elevation: 4,
      margin: EdgeInsets.fromLTRB(8, 4, 8, 4),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        title: Text(elem['text']),
        enableFeedback: true,
        subtitle: Text("Малая морская 108"),
        trailing: IconButton(
          icon: Icon(Icons.account_balance_wallet),
          onPressed: () {
            print(elem);
          },
        ),
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(8),
      children: this._categories.map((e) => _formatTile(e)).toList(),
    );
  }
}
