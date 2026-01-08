import 'package:flutter/material.dart';

// Punto de entrada de la aplicación
void main() {
  // Ejecuta la aplicación Flutter con el widget raíz MyApp
  runApp(const MyApp());
}

// Clase principal que construye la aplicación
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // Retorna un MaterialApp que configura el tema y la pantalla inicial
    return MaterialApp(
      title: 'Calculadora',
      // Configura el tema visual de la aplicación
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.green,
        ), // Es el color para el tema principal de la página
      ),
      // Define la pantalla inicial de la aplicación
      home: const MyHomePage(title: 'Calculadora'),
    );
  }
}

// Widget con estado que define la estructura de la página principal
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // Título que se muestra en la barra superior
  final String title;
  // Aquí estamos diciendo: •	MyHomePage recibe un título •	Ese título se guarda en la variable title. Esto es como un parámetro.
  // ¿Quién le envía ese title? la línea 19. Igual que cuando llamamos una función con argumentos.

  @override
  // Crea el estado de este widget (clase _MyHomePageState)
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
          Container(
            width: double.infinity, //Para que ocupe todo el ancho
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 30,
            ), //Espacio alrededor del texto
            alignment:
                Alignment.centerRight, //Alineación del texto a la derecha
            child: const Text(
              "0",
              style: TextStyle(fontSize: 48),
            ), //Texto grande para mostrar el resultado
          ),
          Expanded(
            child: Column(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(child: Center(child: Icon(Icons.backspace))),
                      Expanded(child: Center(child: Text("AC"))),
                      Expanded(child: Center(child: Text("%"))),
                      Expanded(child: Center(child: Text("÷"))),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(child: Center(child: Text("7"))),
                      Expanded(child: Center(child: Text("8"))),
                      Expanded(child: Center(child: Text("9"))),
                      Expanded(child: Center(child: Text("×"))),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(child: Center(child: Text("4"))),
                      Expanded(child: Center(child: Text("5"))),
                      Expanded(child: Center(child: Text("6"))),
                      Expanded(child: Center(child: Text("-"))),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(child: Center(child: Text("1"))),
                      Expanded(child: Center(child: Text("2"))),
                      Expanded(child: Center(child: Text("3"))),
                      Expanded(child: Center(child: Text("+"))),
                    ],
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(child: Center(child: Text("+/-"))),
                      Expanded(child: Center(child: Text("0"))),
                      Expanded(child: Center(child: Text("."))),
                      Expanded(child: Center(child: Text("="))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
