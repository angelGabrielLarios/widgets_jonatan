import 'package:flutter/material.dart';

class EstadoScaffold extends StatefulWidget {
  /*
  @override
  State<StatefulWidget> createState() {
    return _EstadoScaffold();
  }
  */

  @override
  State<EstadoScaffold> createState() => _EstadoScaffold();
}

class _EstadoScaffold extends State<EstadoScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Scaffold --> App Bar'),
        backgroundColor: Color.fromARGB(234, 245, 118, 0),
      ),
      body: Center(
        child: Text('Este es un Scaffold básico --> Child'),
      ),
    );
  }
}
