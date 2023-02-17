import 'package:flutter/material.dart';

class EstadoRadioButton extends StatefulWidget {
  const EstadoRadioButton({Key? key}) : super(key: key);

  @override
  _EstadoRadioButtonState createState() => _EstadoRadioButtonState();
}

//Enumerados = Colección de Datos del Mismo tipo
enum SistemasOperativos { Mac, Linux, Windows, Android }

class _EstadoRadioButtonState extends State<EstadoRadioButton> {
  SistemasOperativos? _sistemasOperativos = SistemasOperativos.Android;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Widget Radio Button"),
        backgroundColor: Color.fromARGB(255, 236, 157, 29),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 30,
            ),
            Text("¿Cual es el Sistema Operativo que usa Frecuentemente?"),
            SizedBox(
              height: 20,
            ),
            ListTile(
              title: Text("Android"),
              leading: Radio(
                value: SistemasOperativos.Android,
                groupValue: _sistemasOperativos,
                onChanged: (SistemasOperativos? valor) {
                  setState(() {
                    _sistemasOperativos = valor;
                  });
                },
              ),
            ),
            ListTile(
              title: Text("Linux"),
              leading: Radio(
                  value: SistemasOperativos.Linux,
                  groupValue: _sistemasOperativos,
                  onChanged: (SistemasOperativos? valor) {
                    setState(() {
                      _sistemasOperativos = valor;
                    });
                  }),
            ),
            ListTile(
              title: Text("Mac"),
              leading: Radio(
                  value: SistemasOperativos.Mac,
                  groupValue: _sistemasOperativos,
                  onChanged: (SistemasOperativos? valor) {
                    setState(() {
                      _sistemasOperativos = valor;
                    });
                  }),
            ),
            ListTile(
              title: Text("Windows"),
              leading: Radio(
                  value: SistemasOperativos.Windows,
                  groupValue: _sistemasOperativos,
                  onChanged: (SistemasOperativos? valor) {
                    setState(() {
                      _sistemasOperativos = valor;
                    });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
