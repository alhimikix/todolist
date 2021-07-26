import 'package:flutter/material.dart';

class TodoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TodoListState();
}

class _TodoListState extends State<TodoPage> {
  final List<String> _todoList = <String>[];
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: _getItems(),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () => _showDialog(context),
          tooltip: 'Добавить',
          child: Icon(Icons.add)),
    );
  }

  // adds data to list.
  void _addTodoItem(String title) {
    //  a set state will notify the app that the state has changed
    setState(() {
      _todoList.add(title);
    });

    _textEditingController.clear();
  }

  void _removeTodoItem(item) {
    //  a set state will notify the app that the state has changed
    setState(() {
      _todoList.removeAt(item);
    });
  }

  // populate the listview
  Widget _buildTodoItem(String title, int index) {
    print('draw element');
    return Dismissible(
        onDismissed: (direction) {
          _removeTodoItem(index);
        },
        key: Key(title),
        child: Card(
          elevation: 4,
          margin: EdgeInsets.all(8),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          child: ListTile(
            title: Text(title),
            trailing: IconButton(
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                ),
                onPressed: () {
                  _removeTodoItem(index);
                }),
          ),
        ));
  }

  Future _showDialog(BuildContext context) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text("Введите тодуху"),
            content: TextField(
              controller: _textEditingController,
            ),
            actions: <Widget>[
              FlatButton(
                  child: const Text("Добавить"),
                  onPressed: () {
                    Navigator.of(context).pop();
                    _addTodoItem(_textEditingController.text);
                  }),
              FlatButton(
                  child: const Text("Отмена"),
                  onPressed: () {
                    Navigator.of(context).pop();
                  })
            ],
          );
        });
  }

  List<Widget> _getItems() {
    final List<Widget> _todoWidgets = <Widget>[];

    _todoList.asMap().forEach((int key, String value) {
      print(key);
      print(value);
      _todoWidgets.add(_buildTodoItem(value.toString(), key));
    });

    return _todoWidgets;
  }
}
