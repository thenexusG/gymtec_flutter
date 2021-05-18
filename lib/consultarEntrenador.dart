import 'package:flutter/material.dart';

final opciones = ['Jose', 'Roberto', 'Esteban'];

class ConsultaEntrenador extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lista de entrenadores')),
      body: ListView(
        children: crearItems(),
      ),
    );
  }
}

List<Widget> crearItems() {
  final lista = <Widget>[];
  for (String opt in opciones) {
    final tempWidget = ListTile(title: Text(opt));
    lista.add(tempWidget);
    // Divider es un widget que crea una division entre cada elemento de la lista.
    // Agregamos un Divider debajo de cada elemento de la lista
    lista.add(Divider());
  }
  return lista;
}
