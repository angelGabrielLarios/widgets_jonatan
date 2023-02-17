import 'package:flutter/material.dart';

class EstadoToggleButton extends StatefulWidget {
  const EstadoToggleButton({Key? key}) : super(key: key);

  @override
  _EstadoToggleButtonState createState() => _EstadoToggleButtonState();
}

class _EstadoToggleButtonState extends State<EstadoToggleButton> {
  List<bool> _selecciones = List.generate(3, (i) => false);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget Toggle Button"),
        backgroundColor: Color.fromARGB(234, 0, 213, 124),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(20),
            child: ToggleButtons(
              children: <Widget>[
                Icon(Icons.dashboard_customize_sharp),
                Icon(Icons.mail),
                Icon(Icons.manage_history)
              ],
              isSelected: _selecciones,
              onPressed: (int indice) {
                setState(() {
                  //Identifica cual de los elementos esta seleccionado (Estado)
                  _selecciones[indice] = !_selecciones[indice];
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
