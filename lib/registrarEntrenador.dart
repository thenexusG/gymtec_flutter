import 'package:flutter/material.dart';
import 'package:gymtec/consultarEntrenador.dart';

class RegistrarEntrenador extends StatefulWidget {
  @override
  _RegistrarEntrenadorState createState() => _RegistrarEntrenadorState();
}

class _RegistrarEntrenadorState extends State<RegistrarEntrenador> {
  final NombreTextController = TextEditingController();
  final ApellidoPTextController = TextEditingController();
  final ApellidoMTextController = TextEditingController();
  final EdadTextController = TextEditingController();
  final ExperienciaTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Nombre"),
                maxLines: 1,
                controller: NombreTextController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Apellido Paterno"),
                maxLines: 1,
                controller: ApellidoPTextController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Apellido Materno"),
                maxLines: 1,
                controller: ApellidoMTextController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Edad"),
                maxLines: 1,
                controller: EdadTextController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Experiencia (Años)"),
                maxLines: 1,
                controller: ExperienciaTextController,
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ConsultaEntrenador(),
              ));
        },
        label: Text('Registrarme'),
        icon: Icon(Icons.verified_rounded),
      ),
    );
  }
}
