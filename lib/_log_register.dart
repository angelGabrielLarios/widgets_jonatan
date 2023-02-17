import 'package:flutter/material.dart';
import 'package:widgets_flutter/_log_datos.dart';

class EstadoRegister extends StatefulWidget {
  const EstadoRegister({Key? key}) : super(key: key);

  @override
  _EstadoRegisterState createState() => _EstadoRegisterState();
}

class _EstadoRegisterState extends State<EstadoRegister> {
  TextEditingController apellidoPatController = TextEditingController();
  String apellidoPat = "";
  TextEditingController apellidoMatController = TextEditingController();
  String apellidoMat = "";
  TextEditingController emailController = TextEditingController();
  String email = "";
  TextEditingController passwordController = TextEditingController();
  String password = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              bottom: 150.0,
            ),
          ),
          Container(
            height: 180,
            width: 180,
            child: Image.asset('../img/user-icon-2232.png'),
          ),
          Container(
            child: Container(
              margin: EdgeInsets.fromLTRB(60, 70, 60, 20),
              child: TextField(
                controller: apellidoPatController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "First Name"),
              ),
            ),
          ),
          Container(
            child: Container(
              margin: EdgeInsets.fromLTRB(60, 10, 60, 20),
              child: TextField(
                controller: apellidoMatController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Last Name"),
              ),
            ),
          ),
          Container(
            child: Container(
              margin: EdgeInsets.fromLTRB(60, 10, 60, 20),
              child: TextField(
                controller: emailController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "example@gmail.com"),
              ),
            ),
          ),
          Container(
            child: Container(
              margin: EdgeInsets.fromLTRB(60, 10, 60, 20),
              child: TextField(
                controller: passwordController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Password"),
              ),
            ),
          ),
          Center(
            child: Column(
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    apellidoPat = apellidoPatController.text;
                    apellidoMat = apellidoMatController.text;
                    email = emailController.text;
                    password = passwordController.text;

                    Navigator.push(
                      context, MaterialPageRoute(builder: (context) => EstadoDatos(apellidoPat: apellidoPat, apellidoMat: apellidoMat, email: email, password: password,) 
                    ));
                  },
                  child: Text("Save"),
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
    );
  }
}
