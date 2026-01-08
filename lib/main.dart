import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      theme: ThemeData(
        colorScheme: .fromSeed(
          seedColor: Colors.green,
        ), //Es el color para el tema principal de la página
      ),
      home: const MyHomePage(title: 'Calculadora'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;
  //Aquí estamos diciendo: •	MyHomePage recibe un título •	Ese título se guarda en la variable title. Esto es como un parámetro.
  //¿Quién le envía ese title? la línea 19. Igual que cuando llamamos una función con argumentos.

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
        ), //Esto es como decir: “use el title que viene en el widget MyHomePage”
      ),
      body: Column(
        children: [
          Container(child: Text("0")),
          Column(
            children: [
              Row(
                children: [
                  Icon(Icons.backspace),
                  Text("AC"),
                  Text("%"),
                  Text("÷"),
                ],
              ),
              Row(children: [Text("7"), Text("8"), Text("9"), Text("X")]),
              Row(children: [Text("4"), Text("5"), Text("6"), Text("-")]),
              Row(children: [Text("1"), Text("2"), Text("3"), Text("+")]),
              Row(children: [Text("+/-"), Text("0"), Text("."), Text("=")]),
            ],
          ),
        ],
      ),
    );
  }
}
