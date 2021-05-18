import 'package:flutter/material.dart';
import 'package:gymtec/Screen_admin.dart';
import 'package:gymtec/Screen_usuario.dart';
import 'package:gymtec/registrarUsuario.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gym tec',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Gym tec'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final PasswordTextController = TextEditingController();
  final UserTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            DecoratedBox(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/Gymtec.png')))),
            Text('Gymtec'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Email"),
                maxLines: 1,
                controller: UserTextController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Password"),
                maxLines: 1,
                controller: PasswordTextController,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: new RaisedButton(
                onPressed: () => {
                  if (UserTextController.text == 'admin')
                    {
                      if (PasswordTextController.text == '1234')
                        {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ScreenAdmin(),
                              ))
                        }
                    }
                  else
                    {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ScreenUsuario(),
                          ))
                    }
                },
                child: new Text('Entrar'),
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
                builder: (context) => RegistrarUsuario(),
              ));
        },
        label: Text('Registrarme'),
      ),
    );
  }
}
