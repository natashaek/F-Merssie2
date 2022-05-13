import 'package:flutter/material.dart';
import 'package:merssie/pages/login_page.dart';
import 'package:merssie/pages/main_screen.dart';
import 'package:merssie/pages/myPerfilPage.dart';
import 'package:merssie/pages/perfilPage.dart';
import 'package:merssie/pages/splash_screen.dart';
import 'package:merssie/pages/welcomePage.dart';

Map<String, WidgetBuilder> getApplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => SplashScreen(),
    'welcome': (BuildContext context) => WelcomePage(),
    'login': (BuildContext context) => LoginPage(),
    'principal': (BuildContext context) => MainScreen(),
    'perfil': (BuildContext context) => PerfilPage(),
    'myperfil': (BuildContext context) => MyPerfil(),
  };
}
