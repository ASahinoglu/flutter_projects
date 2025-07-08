import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meine erste UI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const MyHomePage(title: 'Mein erster Flutter Screen'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //1-Scaffold
      appBar: AppBar(
        //2-AppBar
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          //3-Column
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Willkommen', // 5-Text
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Divider(), //8-Divider
            const SizedBox(height: 20),
            Row(
              // 4-Row
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  //6-Container
                  width: 80,
                  height: 80,
                  color: Colors.blue,
                  child: const Center(child: Text('Container')),
                ),
              ],
            ),
            const SizedBox(height: 20), //7-Sizedbox
            const Text('Text'),
          ],
        ),
      ),
    );
  }
}
