import 'package:flutter/material.dart';

class Todo {
  final String title;
  final String description;

  Todo(this.title, this.description);
}

final todos = List<Todo>.generate(
  13,
  (i) => Todo(
    'Actividad No.$i',
    'Una descripción de lo que se debe hacer para la Actividad $i',
  ),
);

class EnviarDatos extends StatefulWidget {
  const EnviarDatos({Key? key}) : super(key: key);

  @override
  _EnviarDatosState createState() => _EnviarDatosState();
}

class _EnviarDatosState extends State<EnviarDatos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Enviar Datos'),
      ),
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DetailScreen(todo: todos[index]),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class DetailScreen extends StatelessWidget {
  //Declara un campo que contenga la clase Todo
  final Todo todo;

  // En el constructor, se requiere el objeto Todo
  DetailScreen({Key? key, required this.todo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Usa el objeto Todo para crear nuestra UI
    return Scaffold(
      appBar: AppBar(
        title: Text(todo.title),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(todo.description),
      ),
    );
  }
}
