import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:widgets_flutter/w_scaffold.dart';

class EstadoTabbarTabbarView extends StatefulWidget {
  @override
  _EstadoTabbarTabbarViewState createState() => _EstadoTabbarTabbarViewState();
}

class _EstadoTabbarTabbarViewState extends State<EstadoTabbarTabbarView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: TabBar(tabs: [Tab(), Tab(), Tab()]),
        ),
      ),
    );
  }
}
