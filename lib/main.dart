import 'package:flutter/material.dart';
import 'package:todo/pages/animegirlsPage.dart';
import 'package:todo/pages/cart_page.dart';
import 'dart:developer' as developer;

import 'package:todo/pages/homePage.dart';
import 'package:todo/pages/todoPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MainPageState();
  }
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 2;

  final List pages = <Widget>[
    AnimeGirlsPage(),
    TodoPage(),
    OrdersPage(),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return CartPage();
              }));
          }, icon: Icon(Icons.shopping_cart_rounded))
        ],
      ),
      body: pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Карта',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_taxi),
            label: 'Заказы',
          ),
        ],
      ),
    );
  }
}






