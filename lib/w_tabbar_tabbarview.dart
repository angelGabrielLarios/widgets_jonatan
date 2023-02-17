import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:widgets_flutter/w_scaffold.dart';

class EstadoTabbarTabbarView extends StatefulWidget {
  const EstadoTabbarTabbarView({Key? key}) : super(key: key);

  @override
  _EstadoTabbarTabbarViewState createState() => _EstadoTabbarTabbarViewState();
}

class _EstadoTabbarTabbarViewState extends State<EstadoTabbarTabbarView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(
            tabs: [
              Tab(
                icon: Icon(Icons.android),
                text: "Tab 1",
              ),
              Tab(
                icon: Icon(Icons.apple_sharp),
                text: "Tab 2",
              ),
              Tab(
                icon: Icon(Icons.laptop_sharp),
                text: "Tab3",
              ),
              Tab(
                icon: Icon(Icons.search_sharp),
              )
            ],
          ),
          title: Center(
            child: Text("Widget TabBar & TabBar View"),
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Página 1")),
            Center(
              child: Text("Página 2"),
            ),
            Center(
              child: Text("Página 3"),
            ),
            Center(
              child: Text("Página 4"),
            )
          ],
        ),
      ),
    );
  }
}
