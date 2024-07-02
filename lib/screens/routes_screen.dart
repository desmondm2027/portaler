import 'package:flutter/material.dart';
import 'control_panel.dart';

class RoutesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Rutas de Avalon',
          style: TextStyle(
              color: Colors.white,
              fontSize: 20), // Ajustar el color y tamaño del texto
        ),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.refresh,
                color: Colors.white), // Asegurar que los iconos sean blancos
            onPressed: () {
              // Agrega la acción del icono de actualizar
            },
          ),
          IconButton(
            icon: Icon(Icons.share,
                color: Colors.white), // Asegurar que los iconos sean blancos
            onPressed: () {
              // Agregar la acción para el icono de compartir
            },
          ),
          IconButton(
            icon: Icon(Icons.home,
                color: Colors.white), // Asegurar que los iconos sean blancos
            onPressed: () {
              // Agrega la acción
            },
          ),
        ],
      ),
      body: Container(
        color: Colors.black, // Fondo negro
        child: Center(
          child: Text(
            'Mapa de Rutas',
            style: TextStyle(
                color: Colors.white,
                fontSize:
                    18), // Texto en blanco para que se vea en el fondo negro
          ),
        ),
      ),
      drawer: Drawer(
        child: ControlPanel(onClose: () {
          Navigator.of(context).pop();
        }),
      ),
    );
  }
}
