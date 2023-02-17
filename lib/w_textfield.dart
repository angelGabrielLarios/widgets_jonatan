import 'package:flutter/material.dart';

class EstadoTextfield extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _EstadoTextfield();
}

class _EstadoTextfield extends State<EstadoTextfield> {
  TextEditingController nameController = TextEditingController();
  String fullname = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget TextField"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Full name"),
                onChanged: (texto) {
                  setState(() {
                    fullname = texto;
                  });
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(20),
              child: Text(fullname),
            )
          ],
        ),
      ),
    );
  }
}
