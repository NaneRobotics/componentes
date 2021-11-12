import 'dart:ui';

import 'package:flutter/material.dart';

String t1 =
    'En Bunker nos tomamos enserio la seuridad de todos nuestros clientes';
String t2 = '¡Gracias por confiar en nosotros!';
String t3 =
    'Para salvaguardar mejor la seguridad de tu cuenta te pedimos que actualices la contraseña.';
String t4 =
    'Ingresa la contraseña actual y luego la nueva. Esta debe tener entre 8 y 16 caracteres e incluir al menos 2 numeros, letras o signos.';
Widget texto1() {
  return Container(
    padding: EdgeInsets.all(10.0),
    child: Center(
      child: Text(
        t1,
        style: TextStyle(
          fontSize: 18.0,
        ),
        textAlign: TextAlign.center,
      ),
    ),
  );
}

Widget texto2() {
  return Text(
    t2,
    style: TextStyle(fontSize: 19.0, fontWeight: FontWeight.bold),
  );
}

Widget texto3() {
  return Container(
      padding: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        color: Colors.grey[300],
      ),
      child: Column(
        children: [
          Text(
            t3,
            style: TextStyle(fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(t4),
        ],
      ));
}
