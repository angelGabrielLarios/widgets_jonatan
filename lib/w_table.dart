import 'package:flutter/material.dart';

class EstadoTable extends StatefulWidget {
  const EstadoTable({Key? key}) : super(key: key);

  @override
  _EstadoTableState createState() => _EstadoTableState();
}

class _EstadoTableState extends State<EstadoTable> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Widget DataTable"),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Text("Estudiantes"),
          ),
          DataTable(columns: [
            DataColumn(label: Text("Matricula")),
            DataColumn(label: Text("Nombre")),
            DataColumn(label: Text("Edad"))
          ], rows: [
            DataRow(cells: [
              DataCell(Text("2020078")),
              DataCell(Text("Juan")),
              DataCell(Text("21"))
            ]),
            DataRow(cells: [
              DataCell(Text("202105")),
              DataCell(Text("Jonatan")),
              DataCell(Text("19")),
            ]),
            DataRow(cells: [
              DataCell(Text("202107")),
              DataCell(Text("Pedro")),
              DataCell(Text("20"))
            ]),
            DataRow(cells: [
              DataCell(Text("2021014")),
              DataCell(Text("Pablo")),
              DataCell(Text("19"))
            ]),
            DataRow(cells: [
              DataCell(Text("2021035")),
              DataCell(Text("Jose")),
              DataCell(Text("20"))
            ]),
            DataRow(cells: [
              DataCell(Text("2021141")),
              DataCell(Text("Ramon")),
              DataCell(Text("20"))
            ]),
          ])
        ],
      ),
    );
  }
}
