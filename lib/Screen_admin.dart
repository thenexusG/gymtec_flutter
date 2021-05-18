import 'package:flutter/material.dart';
import 'package:gymtec/registrarEntrenador.dart';
import 'package:gymtec/consultarEntrenador.dart';
import 'package:gymtec/consultarUsuario.dart';

class ScreenAdmin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Gym Tec',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text(""),
          ),
          drawer: MenuLateral(),
          body: Center(),
        ));
  }
}

class MenuLateral extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: ListView(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: Text("Admin"),
            accountEmail: Text("Admin@admin.com"),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        "https://ichef.bbci.co.uk/news/660/cpsprodpb/6AFE/production/_102809372_machu.jpg"),
                    fit: BoxFit.cover)),
          ),
          Ink(
            color: Colors.indigo,
            child: new ListTile(
              title: Text(
                "Opciones de Admin",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          new ListTile(
            title: Text("Agregar instructor"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegistrarEntrenador(),
                  ));
            },
          ),
          new ListTile(
            title: Text("Consultar entrenador"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConsultaEntrenador(),
                  ));
            },
          ),
          new ListTile(
            title: Text("Consultar usuario"),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ConsultarUsuario(),
                  ));
            },
          )
        ],
      ),
    );
  }
}
