import 'package:flutter/material.dart';

class EstadoListView extends StatefulWidget {
  const EstadoListView({Key? key}) : super(key: key);

  @override
  _EstadoListView createState() => _EstadoListView();
}

class _EstadoListView extends State<EstadoListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Widget list View"),
        ),
        backgroundColor: Color.fromARGB(234, 0, 71, 213),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 70,
            color: Colors.lightBlueAccent[100],
            child: Center(child: Text("Primer Elemento")),
          ),
          Container(
            height: 95,
            color: Colors.lightBlueAccent[200],
            child: Center(child: Text("Segundo Elemnto")),
          ),
          Container(
            height: 70,
            color: Colors.lightBlueAccent[400],
            child: Center(
              child: Text("Tercer Elemento"),
            ),
          ),
          Container(
            height: 70,
            color: Colors.lightBlueAccent[700],
            child: Center(
              child: Text("Tercer Elemento"),
            ),
          )
        ],
      ),
    );
  }
}
