import 'package:flutter/material.dart';
import 'routes_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigateToHome();
  }

  _navigateToHome() async {
    await Future.delayed(Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => RoutesScreen(), // Navega a RoutesScreen
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'assets/introduccion.jpeg'), // Utiliza la imagen 'introduccion.jpeg'
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Portaler',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors
                      .white, // Ajuste de el color del texto según el fondo de la imagen
                ),
              ),
              Text(
                'Caminos de Avalon',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors
                      .white, // Ajusta el color del texto según el fondo de la imagen
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
