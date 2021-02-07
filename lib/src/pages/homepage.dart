import 'dart:html';

import 'package:firstapp/src/pages/login.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AppRest'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(240, 94, 100, 1.0),
        automaticallyImplyLeading: false,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
      ),
      body: Center(
        child: Column(children: [
          SizedBox(
            height: 50,
          ),
          Image.asset(
            'assets/android.png',
            height: 110,
            width: 110,
          ),
          SizedBox(
            height: 50,
          ),
          Text(
              "Android es un sistema operativo móvil basado en núcleo Linux y otros software de código abierto. Fue diseñado para dispositivos móviles con pantalla táctil, como teléfonos inteligentes, tabletas, relojes inteligentes, automóviles y televisores.",
              style: TextStyle(
                fontSize: 25.0,
              ),
              textAlign: TextAlign.justify),
          ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith<Color>(
                (Set<MaterialState> states) {
                  if (states.contains(MaterialState.pressed))
                    return Colors.green;
                  return Color.fromRGBO(
                      42, 200, 194, 1.0); // Use the component's default.
                },
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()));
            },
            child: Text(
              "Next",
              style: TextStyle(
                fontSize: 30.0,
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
