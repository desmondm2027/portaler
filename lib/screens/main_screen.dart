import 'package:flutter/material.dart';
import 'routes_screen.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rutas de Avalon'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Nombre de la Ruta'),
            ),
            TextField(
              decoration:
                  InputDecoration(labelText: 'Caminos (separados por coma)'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RoutesScreen()),
                );
              },
              child: Text('Agregar Ruta'),
            ),
          ],
        ),
      ),
    );
  }
}
