import 'package:flutter/material.dart';

class EstadoView extends StatefulWidget {
  const EstadoView({Key? key}) : super(key: key);

  @override
  _EstadoView createState() => _EstadoView();
}

class _EstadoView extends State<EstadoView> {
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
            height: 55,
            color: Colors.lightBlueAccent[100],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Center(
                  child: Text("Nombre"),
                ),
                Row(children: <Widget>[
                  Icon(
                    Icons.crop_square_outlined,
                  ),
                ]),
              ],
            ),
          ),
          Container(
            height: 55,
            color: Colors.lightBlueAccent[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Center(
                  child: Text("Apellido"),
                ),
                Row(children: <Widget>[
                  Icon(
                    Icons.crop_square_outlined,
                  ),
                ]),
              ],
            ),
          ),
          Container(
            height: 55,
            color: Colors.lightBlueAccent[400],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Center(
                  child: Text("Telefono"),
                ),
                Row(children: <Widget>[
                  Icon(
                    Icons.crop_square_outlined,
                  ),
                ]),
              ],
            ),
          ),
          Container(
            height: 55,
            color: Colors.lightBlueAccent[700],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Center(
                  child: Text("Email"),
                ),
                Row(children: <Widget>[
                  Icon(
                    Icons.crop_square_outlined,
                  ),
                ]),
              ],
            ),
          )
        ],
      ),
    );
  }
}
