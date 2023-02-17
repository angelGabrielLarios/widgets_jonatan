import 'package:flutter/material.dart';

class Estadoimagenes extends StatefulWidget {
  const Estadoimagenes({Key? key}) : super(key: key);

  @override
  _EstadoimagenesState createState() => _EstadoimagenesState();
}

class _EstadoimagenesState extends State<Estadoimagenes> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          height: 55,
          color: Colors.lightBlueAccent[100],
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Center(
                child: Text("Yes"),
              ),
              Row(children: <Widget>[
                Icon(
                  Icons.crop_square_outlined,
                ),
              ]),
            ],
          ),
        )
      ],
    );
  }
}
