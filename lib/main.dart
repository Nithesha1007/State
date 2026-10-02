import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:state/counter_store.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
      
        colorScheme: .fromSeed(seedColor: const Color.fromARGB(255, 181, 150, 235)),
      ),
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends StatelessWidget {
  final CounterStore store = CounterStore();
  
  CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Observer(
         builder: (context) => Text(
          'count:${store.count}(${store.isEven?"even" : "odd"})',
          style: const TextStyle(fontSize: 24),
         ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: store.increment,
        tooltip: 'Incremet',
        child: const Icon(Icons.add),
      ),
    );
  }
}
