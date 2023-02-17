import 'package:flutter/material.dart';
import 'package:widgets_flutter/w_scaffold.dart';
import 'package:widgets_flutter/w_tabbar_tabbarview.dart';
import 'package:widgets_flutter/w_banner.dart';
import 'package:widgets_flutter/w_buttons.dart';
import 'package:widgets_flutter/w_drawer.dart';
import 'package:widgets_flutter/w_toggle_button.dart';
import 'package:widgets_flutter/w_radio_button.dart';
import 'package:widgets_flutter/w_switch.dart';
import 'package:widgets_flutter/w_listview.dart';
import 'package:widgets_flutter/_listas.dart';
import 'package:widgets_flutter/w_text_button.dart';
import 'package:widgets_flutter/w_table.dart';
import 'package:widgets_flutter/_panel_expansion.dart';
import 'package:widgets_flutter/_slivers.dart';
import 'package:widgets_flutter/_navigation.dart';
import 'package:widgets_flutter/_envdatos.dart';
import 'package:widgets_flutter/_login.dart';
import 'package:widgets_flutter/_log_register.dart';
import 'package:widgets_flutter/_log_datos.dart';
import 'package:widgets_flutter/_slivers_image.dart';

void main() {
  runApp(const MyApp_Widgwts());
}

class MyApp_Widgwts extends StatelessWidget {
  const MyApp_Widgwts({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Widgets Flutter',
      //home: new EstadoRegister(),
      /*home: Scaffold(
        appBar: AppBar(title: Text('Collapsing List Image')),
        body: CollapsingList(),
      ),*/
      // home: Scaffold(
      //   appBar: AppBar(
      //       title: Text('Equipos de Fútbol del Mundo',
      //           style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600))),
      //   body: CollapsingListImage(),
      // ),
      home: const EstadoLogin(),
    );
  }
}
