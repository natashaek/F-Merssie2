import 'package:flutter/material.dart';
import 'package:merssie/pages/login_page.dart';
import 'package:merssie/pages/main_screen.dart';

class WelcomePage extends StatelessWidget {
  // const WelcomePage({Key? key}) : super(key: key);
  final estiloTitulo = TextStyle(
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
  );
  final estiloSubtitulo = TextStyle(
    fontSize: 20.0,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 1.0),
            _InsertarImagen(),
            SizedBox(height: 1.0),
            _Texto(),
            SizedBox(height: 50.0),
            _BotonLogin(context),
            SizedBox(height: 10.0),
            _BotonSign(context)
          ],
        ),
      ),
    );
  }

  Widget _InsertarImagen() {
    return Image.asset('assets/repartidor1.png', height: 200.0);
  }

  Widget _Texto() {
    return SafeArea(
        child: Column(
      crossAxisAlignment: (CrossAxisAlignment.center),
      children: <Widget>[
        Text("Hi, welcome", style: estiloTitulo),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Text(
            "Solo se que no se nada",
            style: estiloSubtitulo,
            textAlign: TextAlign.center,
          ),
        )
      ],
    ));
  }

  Widget _BotonLogin(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Container(
        color: Color.fromARGB(255, 255, 255, 255),
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(200, 240, 104, 67),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              padding: EdgeInsets.symmetric(horizontal: 140.0, vertical: 10.0),
            ),
            child: Text(
              'LOGIN',
              style: TextStyle(fontSize: 20.0),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => LoginPage()));
            },
          ),
        ),
      ),
    );
  }

  Widget _BotonSign(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
      child: Container(
        color: Colors.white,
        child: Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(200, 240, 104, 67),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0)),
              padding: EdgeInsets.symmetric(horizontal: 140.0, vertical: 10.0),
            ),
            child: Text(
              'SING UP',
              style: TextStyle(fontSize: 20.0),
            ),
            onPressed: () => Navigator.pushNamed(context, 'signup'),
          ),
        ),
      ),
    );
  }
}
