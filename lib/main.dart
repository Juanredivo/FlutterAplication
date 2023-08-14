import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _explorationMode = false;

  void _toggleExplorationMode() {
    setState(() {
      _explorationMode = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TrafficLife'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(
                Icons.traffic,
                size: 100,
                color: Colors.blue,
              ),
              SizedBox(height: 20),
              Text(
                'Bem-vindo ao TrafficLife!',
                style: TextStyle(fontSize: 20),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _toggleExplorationMode,
                child: Text('Explorar'),
              ),
              if (_explorationMode) ...[
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ConsultarMultasScreen()));
                  },
                  child: Text('Consultar Multas'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => VeiculosVinculadosScreen()));
                  },
                  child: Text('Veículos Vinculados'),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DescontosEspeciaisScreen()));
                  },
                  child: Text('Descontos Especiais'),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

class ConsultarMultasScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Consultar Multas'),
      ),
      body: Center(
        child: Text('Tela de Consultar Multas'),
      ),
    );
  }
}

class VeiculosVinculadosScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Veículos Vinculados'),
      ),
      body: Center(
        child: Text('Tela de Veículos Vinculados'),
      ),
    );
  }
}

class DescontosEspeciaisScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Descontos Especiais'),
      ),
      body: Center(
        child: Text('Tela de Descontos Especiais'),
      ),
    );
  }
}
