import 'package:flutter/material.dart';
import 'package:widgets_flutter/_log_register.dart';
import 'package:widgets_flutter/_login.dart';

class EstadoDatos extends StatefulWidget {

  String apellidoPat = "";
  String apellidoMat = "";
  String email = "";
  String password = "";

  EstadoDatos({Key? key, required this.apellidoPat, required this.apellidoMat, required this.email, required this.password}) : super(key: key);

  @override
  _EstadoDatosState createState() => _EstadoDatosState();
}

class _EstadoDatosState extends State<EstadoDatos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: ListView(
        children: <Widget>[
          Padding(padding: const EdgeInsets.only(
            top: 45.0,
          )),
          Center(child: Text("Hola!!", style: TextStyle(fontSize: 98, fontWeight: FontWeight.bold,))),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 25.0,
            ),
          ),
          Center(child: Text("Usuario: " + widget.apellidoPat + widget.apellidoMat, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 25.0,
            ),
          ),
          Center(child: Text("Correo: " + widget.email, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 25.0,
            ),
          ),
          Center(child: Text("Password: " + widget.password, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 25.0,
            ),
          ),
          Center(
            child: Column(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => EstadoLogin()));
                  },
                  child: Icon(Icons.home),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.brown,
                      textStyle: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.normal)),
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
