import 'package:flutter/material.dart';
import 'atividade1.dart';
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
          title: const Text('Lista de atividades mobile'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              Text(
                'Escolha a atividade!',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {

                },
                child: Text('Atividade 1'),
              ),
              ElevatedButton(
                onPressed: () {

                },
                child: Text('Atividade 2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
