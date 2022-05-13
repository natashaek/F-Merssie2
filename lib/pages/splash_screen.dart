import 'package:flutter/material.dart';
import 'package:merssie/pages/login_page.dart';
import 'package:merssie/pages/welcomePage.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Color.fromARGB(255, 228, 168, 149),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset('assets/repartidor1.png', height: 350.0),
            Column(
              children: [
                Text(
                  'Delivery',
                  style: Theme.of(context).textTheme.headline1,
                ),
                Text(
                  'To Your Home',
                  style: Theme.of(context).textTheme.headline2,
                ),
                Text(
                  'Con un simple click',
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
            MaterialButton(
              elevation: 10.0,
              minWidth: 50.0,
              height: 50.0,
              color: Theme.of(context).primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Text(
                "Let's Start",
                style: TextStyle(color: Colors.white, fontSize: 20.0),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => WelcomePage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
