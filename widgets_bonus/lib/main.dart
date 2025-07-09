import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text('Aufgabe 1'),
        ),
        body: const Padding(padding: EdgeInsets.all(8.0), child: MyScreen()),
      ),
    );
  }
}

// Haupt-Layout
class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeaderText(),
        const HeaderText(),
        const SizedBox(height: 20),
        const ColorButtonRow(),
        const SizedBox(height: 20),
        const ColorButtonRow(),
        const SizedBox(height: 20),
        const IconRow(),
        const SizedBox(height: 20),
        const IconRow(),
      ],
    );
  }
}

// Wiederverwendbarer Header-Text
class HeaderText extends StatelessWidget {
  const HeaderText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hello App Akademie!',
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.blue,
      ),
    );
  }
}

// Wiederverwendbare Zeile mit farbigen Boxen & Buttons
class ColorButtonRow extends StatelessWidget {
  const ColorButtonRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        ColorBox(color: Colors.red, label: 'A'),
        ColorBox(color: Colors.green, label: 'B'),
        ColorBox(color: Colors.blue, label: 'C'),
      ],
    );
  }
}

// Einzelne farbige Box mit Button
class ColorBox extends StatelessWidget {
  final Color color;
  final String label;

  const ColorBox({super.key, required this.color, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      color: color,
      child: Center(
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.purple,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: Text(label, style: const TextStyle(color: Colors.white)),
        ),
      ),
    );
  }
}

// Wiederverwendbare Icon-Reihe
class IconRow extends StatelessWidget {
  const IconRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [Icon(Icons.face, size: 40), Icon(Icons.face, size: 40)],
    );
  }
}
