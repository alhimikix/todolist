import 'package:flutter/material.dart';
import 'package:todo/main.dart';

class CartPage extends StatefulWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Список товаров"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          children: [
            /*Align(
              alignment: Alignment.topCenter,
              widthFactor: 1.0,
              heightFactor: 0.4,
              child: Image.asset(
                  'images/animeGirl.jpg',
                fit: BoxFit.fitWidth,
              ),
            )*/
            Stack(

            )
          ],
        ),
      ),
    );
  }
}
