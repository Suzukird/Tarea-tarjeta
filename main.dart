import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi Primera App',
      theme: 
          ThemeData(colorScheme: ColorScheme.fromSeed(seedColor: Colors.grey)),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bienvenidos a Flutter'),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: 
            TarjetaPerfil(
              /*Text('Hola mundo');
              style: TextStyle(
                fontSize: 24,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
              ),*/
            ),
      ),
    );
  }
}

class TarjetaPerfil extends StatelessWidget {
  const TarjetaPerfil({super.key});

  Widget build(BuildContext context) {
    Widget _buildEstadistica(String titulo, String valor) {
      
      return Column(
        children: [
          Text(
            valor,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          Text(
            titulo,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ],
      );
    }

    return Container(
      width: 400,
      height: 600,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
         color: Colors.black26,
         borderRadius: BorderRadius.circular(15),
         boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.5),
              blurRadius: 10,
              spreadRadius: 2,
            )
          ]),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          //Foto de perfil
          Container(
            width: 150,
            height: 125,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.purple[200],
            ),
            child: const Center(
              child: Icon(
                Icons.person_2_outlined,
                size: 50,
              ),
            ),
          ),
          const SizedBox(height: 16),
          //Información del perfil
          const Text(
            'Emilio Estrella',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Desarrollador Flutter Senior',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.heart_broken),
              Text('45'),
            ],
          ),
          const SizedBox(height: 16),
          Wrap(
            spacing: 8.0,
            runSpacing: 4.0,
            children: <Widget>[
              Chip(label: Text('Flutter')),
              Chip(label: Text('Dart')),
              Chip(label: Text('Firebase')),
              Chip(label: Text('Git')),
              Chip(label: Text('UI/UX')),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              IconButton(icon: Icon(Icons.abc), onPressed: () {}),
              IconButton(icon: Icon(Icons.person), onPressed: () {}),
              IconButton(icon: Icon(Icons.camera_alt), onPressed: () {}),
              IconButton(icon: Icon(Icons.business), onPressed: () {}),
              IconButton(icon: Icon(Icons.arrow_back_ios_new), onPressed: () {},)
            ],
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                onPressed: () {},
                child: Text('Contactar'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text('CV'),
              ),
            ],
          ),
          const SizedBox( height: 20),
          //Estadisticas              
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _buildEstadistica('Proyectos', '15'),
              _buildEstadistica('Seguidores', '1.2K'),
              _buildEstadistica('Rating', '4.9'),
            ],
          ),
        ],
      ),
    );
  }
}