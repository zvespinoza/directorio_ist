import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Directorio IST La Troncal"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.amber,
        ),
        body: ListView(
          padding: EdgeInsets.all(10),
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Ing: Israel Zurita"),
              subtitle: Text("Desarrollo Aplicaciones Web"),
              trailing: Icon(Icons.star, color: const Color.fromARGB(255, 163, 208, 245)),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Ing: Angel Novillo"),
              subtitle: Text("Desarrollo Aplicaciones Web"),
              trailing: Icon(Icons.star, color: const Color.fromARGB(255, 163, 208, 245)),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("Ing: Cecilia Naula"),
              subtitle: Text("Desarrollo Aplicaciones Web"),
              trailing: Icon(Icons.star, color: const Color.fromARGB(255, 163, 208, 245)),
            ),
            Divider(),
          ],
        ),
      ),
    );
  }
}
