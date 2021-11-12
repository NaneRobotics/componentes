import 'package:flutter/cupertino.dart';
import 'package:bunker_pantallas/src/page/reset_password.dart';
import 'package:bunker_pantallas/src/page/home_page.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(), //ruta de inicio de aplicacion
    'res-pass': (BuildContext context) =>
        ResetPassword(), //ruta de cambiar contraseña
  };
}
