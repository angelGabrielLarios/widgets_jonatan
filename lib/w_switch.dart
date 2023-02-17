import 'package:flutter/material.dart';

class EstadoSwitch extends StatefulWidget {
  const EstadoSwitch({Key? key}) : super(key: key);

  @override
  _EstadoSwitch createState() => _EstadoSwitch();
}

class _EstadoSwitch extends State<EstadoSwitch> {
  bool _isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Switch'),
        backgroundColor: Color.fromARGB(255, 95, 29, 236),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          //Parametrizar
          Center(
            child: Switch(
              value: _isSwitched,
              onChanged: (valor) {
                setState(() {
                  _isSwitched = valor;
                });
              },
              activeColor: Colors.deepPurpleAccent,
              activeTrackColor: Colors.deepPurple,
              inactiveTrackColor: Color.fromARGB(255, 153, 94, 255),
            ),
          )
        ],
      ),
    );
  }
}
