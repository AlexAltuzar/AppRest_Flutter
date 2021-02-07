import 'package:firstapp/src/pages/listname_page.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String user = "";
    String password = "";
    return Scaffold(
      appBar: AppBar(
        title: Text('AppRest'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(240, 94, 100, 1.0),
        automaticallyImplyLeading: false,
      ),
      body: Container(
        color: Color.fromRGBO(249, 246, 239, 1.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              onChanged: (texto) {
                user = texto;
              },
              style: TextStyle(
                fontSize: 25.0,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                icon: Icon(
                  Icons.account_circle,
                  color: Colors.green,
                  size: 36.0,
                ),
                labelText: 'User',
              ),
            ),
            SizedBox(
              height: 32,
            ),
            TextField(
              onChanged: (texto) {
                password = texto;
              },
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              style: TextStyle(
                fontSize: 25.0,
              ),
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(),
                icon: Icon(
                  Icons.lock,
                  color: Colors.green,
                  size: 36.0,
                ),
                labelText: 'Password',
              ),
            ),
            SizedBox(
              height: 32,
            ),
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
                if (user.isEmpty || password.isEmpty) {
                  Fluttertoast.showToast(
                      msg: "Campos vacios",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.red,
                      textColor: Colors.white,
                      fontSize: 16.0);
                } else {
                  Fluttertoast.showToast(
                      msg: "User: " + user + "\n Password: " + password,
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      timeInSecForIosWeb: 1,
                      backgroundColor: Colors.green,
                      textColor: Colors.white,
                      fontSize: 16.0);
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ListName()));
                }
              },
              child: Text(
                "Login",
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                  ),
                ),
                ElevatedButton(
                  child: Text(
                    "Back",
                    style: TextStyle(
                      fontSize: 30.0,
                    ),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed))
                          return Colors.green;
                        return Color.fromRGBO(42, 200, 194, 1.0); // Use the component's default.
                      },
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
