import 'package:flutter/material.dart';

class EstadoBotones extends StatefulWidget {
  const EstadoBotones({Key? key}) : super(key: key);

  @override
  _EstadoBotonesState createState() => _EstadoBotonesState();
}

class _EstadoBotonesState extends State<EstadoBotones> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Botones...(ElevatedButton)"),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
                onPressed: () {}, child: Text("Default Enable Button")),
            ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.apple_outlined),
                label: Text("apple")),
            ElevatedButton(
              onPressed: () {},
              child: Text("Text color Changed"),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontStyle: FontStyle.normal)),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Text color Changed"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.redAccent,
                textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontStyle: FontStyle.italic),
                shape: BeveledRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(3))),
              ),
            )
          ],
        ),
      ),
    );
  }
}
