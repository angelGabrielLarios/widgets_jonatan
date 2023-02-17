import 'package:flutter/material.dart';

class Item {
  Item({
    required this.headerText,
    required this.expandedText,
    this.isExpanded = false,
  });
  String headerText;
  String expandedText;
  bool isExpanded;
}

class Estadoimagenes extends StatefulWidget {
  const Estadoimagenes({Key? key}) : super(key: key);

  @override
  _EstadoimagenesState createState() => _EstadoimagenesState();
}

class _EstadoimagenesState extends State<Estadoimagenes> {
  final List<Item> _data = List<Item>.generate(
    4,
    (int index) {
      return Item(
        headerText: 'Personaje $index',
        expandedText: 'This is Item number $index',
      );
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Lista de Imagenes'),
          backgroundColor: Color.fromARGB(255, 7, 167, 53),
        ),
        body: SingleChildScrollView(
          child: ExpansionPanelList(
            expansionCallback: (int index, bool isExpanded) {
              setState(() {
                _data[index].isExpanded = !isExpanded;
              });
            },
            children: _data.map<ExpansionPanel>((Item item) {
              return ExpansionPanel(
                headerBuilder: (BuildContext context, bool isExpanded) {
                  return ListTile(
                    title: Text(item.headerText),
                  );
                },
                body: ListTile(
                  title: Text(item.expandedText),
                  subtitle: const Text("Para Borrar haga clic en el icono"),
                  trailing: const Icon(
                    Icons.delete,
                    color: Colors.lightGreen,
                  ),
                  onTap: () {
                    setState(() {
                      _data.removeWhere(
                          (Item currentItem) => item == currentItem);
                    });
                  },
                ),
                isExpanded: item.isExpanded,
              );
            }).toList(),
          ),
        ));
  }
}
