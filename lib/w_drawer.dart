import 'package:flutter/material.dart';

class EstadoDawer extends StatefulWidget {
  const EstadoDawer({Key? key}) : super(key: key);

  @override
  _EstadoDawerState createState() => _EstadoDawerState();
}

class _EstadoDawerState extends State<EstadoDawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Soy un Drawer Demo')),
      ),
      body: Center(
        child: Text("Drawer"),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration:
                  BoxDecoration(color: Color.fromARGB(255, 82, 177, 255)),
              child: Text("Header Drawer"),
            ),
            ListTile(
              title: Text("Elemento 1"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Elemento 2"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Elemento 3"),
              onTap: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
