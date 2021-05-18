import 'package:flutter/material.dart';
import 'package:gymtec/main.dart';

class RegistrarUsuario extends StatefulWidget {
  @override
  _RegistrarState createState() => _RegistrarState();
}

class _RegistrarState extends State<RegistrarUsuario> {
  final NombreTextController = TextEditingController();
  final ApellidoPTextController = TextEditingController();
  final ApellidoMTextController = TextEditingController();
  final EdadTextController = TextEditingController();
  final PesoTextController = TextEditingController();
  final EstaturaTextController = TextEditingController();

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
                    border: OutlineInputBorder(), labelText: "Peso"),
                maxLines: 1,
                controller: PesoTextController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Estatura"),
                maxLines: 1,
                controller: EstaturaTextController,
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
                builder: (context) => MyApp(),
              ));
        },
        label: Text('Registrarme'),
        icon: Icon(Icons.verified_rounded),
      ),
    );
  }
}
