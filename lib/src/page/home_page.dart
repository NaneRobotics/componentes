import 'package:flutter/material.dart';
import 'package:bunker_pantallas/src/page/reset_password.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      padding: const EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 30.0),
      child: ListView(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(0.0, 40.0, 0.0, 40.0),
            child: Center(
              child: Text(
                'Iniciar sesión',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 30.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Usuario',
                  hintText: 'Correo electronico',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(0.0))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 30.0),
            child: TextField(
              obscureText: _isObscure,
              decoration: InputDecoration(
                labelText: 'Contraseña',
                suffixIcon: IconButton(
                  icon: Icon(
                      _isObscure ? Icons.visibility : Icons.visibility_off),
                  onPressed: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(0.0),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 30.0),
            child: ElevatedButton(
              onPressed: () {
                final route = MaterialPageRoute(builder: (context) {
                  return ResetPassword();
                });
                Navigator.push(context, route);
              },
              child: Text(
                'Ingresar',
                style: TextStyle(fontSize: 15.0),
              ),
              style: ButtonStyle(
                shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0)),
                ),
                backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
              ),
            ),
          ),
          Divider(),
          Container(
            padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 30.0),
            child: Center(
              child: Text(
                'Ingresar con',
                style: TextStyle(fontSize: 25.0),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 10.0, 8.0, 30.0),
            child: Row(
              children: [
                Expanded(
                  child: IconButton(
                    iconSize: 70.0,
                    onPressed: () {},
                    icon: Icon(Icons.shield_outlined),
                  ),
                ),
                Expanded(
                  child: IconButton(
                    iconSize: 70.0,
                    onPressed: () {},
                    icon: Icon(Icons.fingerprint),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),
            child: Container(
              child: Center(
                child: Text(
                  'Olvidé mi contraseña',
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
