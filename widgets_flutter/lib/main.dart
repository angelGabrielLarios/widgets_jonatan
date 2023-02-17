import 'package:flutter/material.dart';
import 'package:widgets_flutter/w_scaffold.dart';

void main() {
  runApp(const MyApp_Widgwts());
}

class MyApp_Widgwts extends StatelessWidget {
  const MyApp_Widgwts({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widget Flutter',
      home: new EstadoScaffold(),
    );
  }
}
