import 'package:firstapp/src/pages/userdata_page.dart';
import 'package:flutter/material.dart';

class ListName extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var listName = [
      "Jorge Salvatore",
      "Erik Smith",
      "Cesar Pentland",
      "Fernanda O'Kelly",
      "Edward Mills",
      "Diana Taylor",
      "Enrique Seebold",
      "Vanessa Jones",
      "Nain Burns",
      "Linda Rodriguez",
      "Miguel Grapham",
      "Pamela Anderson",
      "Alejandro Brown",
      "Mariazel Williams",
      "Moises O'Connor",
      "Daniela O'Neill",
      "David Walsh",
      "Andrea Roberts",
      "Ricardo Johnson",
      "Alessandra Byrne",
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('AppRest'),
        centerTitle: true,
        backgroundColor: Color.fromRGBO(240, 94, 100, 1.0),
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
      ),
      body: Container(
        color: Color.fromRGBO(249, 246, 239, 1.0),
        child: ListView.builder(
            itemCount: listName.length,
            itemBuilder: (context, index) {
              final item = listName[index];
              return ListTile(
                  title: Text(item,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25.0,
                      )),
                  onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => UserData(name: item)),
                        ),
                      });
            }),
      ),
    );
  }
}
