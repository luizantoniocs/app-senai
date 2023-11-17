import 'package:flutter/material.dart';

import 'pages/second_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: Text(widget.title),
        ),
        drawer: Drawer(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                  ),
                  Text(
                    'Lucas Anaissi',
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Divider(
                  height: 2,
                  thickness: 2,
                  color: Colors.white,
                ),
              ),
              drawerButton(context, 'Home', Icon(Icons.home)),
              drawerButton(context, 'Compras', Icon(Icons.shopping_cart)),
              drawerButton(context, 'Pedidos', Icon(Icons.shopping_bag)),
              drawerButton(context, 'Configurações', Icon(Icons.settings)),
            ],
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '$_counter',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(builder: (_) => const SecondPage()),
                  );
                },
                child: Text('Ir para a 2ª Página'),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _incrementCounter,
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

drawerButton(context, 'Configurações', Icon(Icons.settings)),
Widget drawerButton(
  BuildContext context,
  String label,
  Icon icon,
) {
  return SizedBox(
    width: MediaQuery.of(context).size.width * 0.5,
    child: ElevatedButton.icon(
      onPressed: () {},
      icon: icon,
      label: Text(
        label,
        style: TextStyle(
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
      ),
    ),
  );
}
