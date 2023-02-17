import 'package:flutter/material.dart';

class EstadoTextButton extends StatefulWidget {
  const EstadoTextButton({Key? key}) : super(key: key);

  @override
  _EstadoTextButton createState() => _EstadoTextButton();
}

class _EstadoTextButton extends State<EstadoTextButton> {
  String contenido =
      "The Following Yes / No are text buttons. They are aligned botton and right of the content";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Widget TextButton"),
          ),
          backgroundColor: Color.fromARGB(234, 0, 71, 213),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Text(contenido),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                    onPressed: () {
                      setState(() {
                        contenido =
                            "Las Siguientes Opciones Yes / No son text buttons. Estos estan alineados abajo y a la derecha del contenido";
                      });
                    },
                    child: Text("Yes")),
                TextButton(
                    onPressed: () {
                      setState(() {
                        contenido =
                            "The Following Yes / No are text buttons. They are aligned botton and right of the content";
                      });
                    },
                    child: Text("No"))
              ],
            )
          ],
        ));
  }
}
