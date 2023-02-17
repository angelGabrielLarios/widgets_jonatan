import 'dart:html';

import 'package:flutter/material.dart';

class EstadoBanner extends StatefulWidget {
  @override
  State<EstadoBanner> createState() => _EstadoBanner();
}

class _EstadoBanner extends State<EstadoBanner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Widget Banner  --> App Bar'),
        backgroundColor: Color.fromARGB(255, 19, 188, 149),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Banner(
            message: 'Este es el Mensaje de un Banner',
            location: BannerLocation.topStart,
            child: Container(
              height:200,
              width: 200,
              color: Colors.yellow,
              alignment: Alignment.center,
              child: Text("¡¡ Hola !!")
            ),
          ),
        ),
      ),
    );
  }
}
