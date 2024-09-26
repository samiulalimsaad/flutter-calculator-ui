import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() => runApp(const CalculatorApp());

class CalculatorApp extends StatelessWidget {
  const CalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const CalculatorScreen(),
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.indigo,
        ),
      ),
    );
  }
}

class CalculatorScreen extends StatelessWidget {
  const CalculatorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Container(
              color: Colors.white,
              alignment: Alignment.bottomRight,
              padding: const EdgeInsets.all(16),
              child: const Text(
                '0',
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          const Row(
            children: [
              Expanded(
                child: CalculatorButton('DEL', Colors.lightBlue, height: 100),
              ),
              Expanded(
                child: CalculatorButton('=', Colors.lightBlue, height: 100),
              ),
            ],
          ),
          Expanded(
            flex: 4,
            child: GridView.count(
              crossAxisCount: 4,
              childAspectRatio: 1.5,
              children: const [
                CalculatorButton('1', Colors.orange),
                CalculatorButton('2', Colors.orange),
                CalculatorButton('3', Colors.orange),
                CalculatorButton('/', Colors.green),
                CalculatorButton('4', Colors.orange),
                CalculatorButton('5', Colors.orange),
                CalculatorButton('6', Colors.orange),
                CalculatorButton('-', Colors.green),
                CalculatorButton('7', Colors.orange),
                CalculatorButton('8', Colors.orange),
                CalculatorButton('9', Colors.orange),
                CalculatorButton('X', Colors.green),
                CalculatorButton('.', Colors.orange),
                CalculatorButton('0', Colors.orange),
                CalculatorButton('%', Colors.green),
                CalculatorButton('+', Colors.green),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CalculatorButton extends StatelessWidget {
  final String text;
  final Color color;
  final double height;

  const CalculatorButton(this.text, this.color, {super.key, this.height = 30});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(1),
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: () {
          // TODO: Implement button functionality
          if (kDebugMode) {
            print('$text pressed');
          }
        },
        child: Text(
          text,
          style: const TextStyle(
              fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
