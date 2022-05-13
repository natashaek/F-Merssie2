import 'package:flutter/material.dart';
import 'package:merssie/pages/main_screen.dart';
import 'package:merssie/pages/splash_screen.dart';
import 'package:merssie/pages/welcomePage.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Image.asset('assets/repartidor1.png', height: 200.0),
            //icon: Icon(Icons.delivery_dining_outlined),
            Column(
              children: [
                nombre(),
                SizedBox(
                  height: 10,
                ),
                usser(context),
                password(context),
              ],
            ),
            MaterialButton(
              elevation: 5.0,
              minWidth: 50.0,
              height: 35.0,
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Text(
                'ENTRAR',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 11.0,
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MainScreen()));
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget nombre() {
  return Text(
    "INICIAR SESION",
    style: TextStyle(
      color: Color.fromARGB(255, 0, 0, 0),
      fontSize: 35.0,
      fontWeight: FontWeight.bold,
    ),
  );
}

Widget usser(context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 65, vertical: 25),
    child: TextField(
      decoration: InputDecoration(
        hintText: "Ingrese su usuario",
        fillColor: Theme.of(context).primaryColor,
        filled: true,
      ),
    ),
  );
}

Widget password(context) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 65, vertical: 25),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Ingrese su contraseña",
        fillColor: Theme.of(context).primaryColor,
        filled: true,
      ),
    ),
  );
}
