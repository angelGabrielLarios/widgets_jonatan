import 'package:flutter/material.dart';
import 'package:widgets_flutter/_log_register.dart';

class EstadoLogin extends StatefulWidget {
  const EstadoLogin({Key? key}) : super(key: key);

  @override
  _EstadoLoginState createState() => _EstadoLoginState();
}

class _EstadoLoginState extends State<EstadoLogin> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  //String emailController = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 130.0,
                  ),
                ),
                Container(
                  height: 250,
                  width: 250,
                  child: Image.asset('../img/user-icon-2232.png'),
                ),
                Container(
                  child: Container(
                    padding: const EdgeInsets.only(bottom: 1, top: 60),
                    margin: EdgeInsets.all(20),
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
                    margin: EdgeInsets.all(20),
                    child: TextField(
                      controller: passwordController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: "Password"),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    bottom: 45.0,
                  ),
                ),
                Center(
                  child: Column(
                    children: <Widget>[
                      ElevatedButton(
                        onPressed: () {},
                        child: Text("Login"),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.all(38),
                      child: TextButton(
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => EstadoRegister()),
                              );
                            });
                          },
                          child: Text(
                            "Register",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontStyle: FontStyle.italic,
                                fontWeight: FontWeight.bold),
                          )),
                      /*
                        Text(
                          "Register",
                          style: TextStyle(
                              fontStyle: FontStyle.italic,
                              fontWeight: FontWeight.bold),
                        ),
                        */
                    )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
