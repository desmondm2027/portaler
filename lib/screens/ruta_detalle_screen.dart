import 'package:flutter/material.dart';
import '../models/ruta.dart';

class RutaDetalleScreen extends StatelessWidget {
  final Ruta ruta;

  RutaDetalleScreen({required this.ruta});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(ruta.nombre),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Caminos:',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ...ruta.caminos.map((camino) => Text(camino)).toList(),
          ],
        ),
      ),
    );
  }
}
