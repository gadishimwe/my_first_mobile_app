import 'package:flutter/material.dart';

class ToDos extends StatefulWidget {
  @override
  _ToDosState createState() => _ToDosState();
}

class _ToDosState extends State<ToDos> {
  List todos = [];
  var value;
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TODOs APP'),
      ),
      body: Column(children: <Widget>[
        Container(
          child: Text(
            'Add a todo',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          padding: const EdgeInsets.fromLTRB(10, 10, 5, 10),
          alignment: Alignment.bottomLeft,
        ),
        Container(
          child: TextField(
            controller: _controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Type a todo',
            ),
            onSubmitted: (String value) {
              setState(() {
                todos.add(value);
              });
              _controller.clear();
            },
          ),
          padding: const EdgeInsets.all(10),
        ),
        Container(
          child: Text(
            'My to do list',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          padding: const EdgeInsets.all(10),
        ),
        todos.length != 0
            ? Expanded(
                child: ListView.builder(
                    itemCount: todos.length,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        title: Text(todos[index]),
                        trailing: IconButton(
                          icon: Icon(
                            Icons.remove_circle_outline,
                            color: Colors.red,
                          ),
                          onPressed: () {
                            setState(() {
                              todos.removeAt(index);
                            });
                          },
                        ),
                      );
                    }),
              )
            : Container(
                child: Text('There is no todos.'),
              )
      ]),
    );
  }
}
