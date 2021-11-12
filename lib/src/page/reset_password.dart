import 'package:bunker_pantallas/src/page/Strings/txt_temp.dart';
import 'package:flutter/material.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  bool _isObscure1 = true, _isObscure2 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 120,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.blueGrey,
        title: Center(
          child: _barr(),
        ),
      ),
      body: ListView(
        children: [_contenido()],
      ),
    );
  }

  Widget _barr() {
    return Column(
      children: [
        Text(
          '¡Bienvenido!',
          style: TextStyle(fontWeight: FontWeight.normal),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          'Juan Rodriguez',
          style: TextStyle(fontSize: 27.0, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Widget _contenido() {
    return Padding(
      padding: EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          texto1(),
          SizedBox(
            height: 30.0,
          ),
          texto2(),
          SizedBox(
            height: 30.0,
          ),
          texto3(),
          SizedBox(
            height: 30.0,
          ),
          _formularioResetPass(),
        ],
      ),
    );
  }

  Widget _formularioResetPass() {
    return Container(
      //decoration: BoxDecoration(color: Colors.amber),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          TextField(
            obscureText: _isObscure1,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              labelText: 'Contraseña',
              labelStyle: TextStyle(fontSize: 15.0),
              suffixIcon: IconButton(
                icon:
                    Icon(_isObscure1 ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    _isObscure1 = !_isObscure1;
                  });
                },
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          TextField(
            obscureText: _isObscure2,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
              ),
              labelText: 'Repetir contraseña',
              labelStyle: TextStyle(fontSize: 15.0),
              suffixIcon: IconButton(
                icon:
                    Icon(_isObscure2 ? Icons.visibility : Icons.visibility_off),
                onPressed: () {
                  setState(() {
                    _isObscure2 = !_isObscure2;
                  });
                },
              ),
            ),
          ),
          SizedBox(
            height: 30.0,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('Actualizar'),
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0)),
              ),
              backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
            ),
          ),
        ],
      ),
    );
  }
}
