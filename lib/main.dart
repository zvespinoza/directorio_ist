import 'package:flutter/material.dart';
import 'docente.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  Docente docente1 = Docente(nombres: "Angel", apellidos: "Novillo", carrera: "DWA", nivelEstudios:"Ing.");

  List<Docente> listaDocente = [
    Docente(nombres: "Angel", apellidos: "Novillo", carrera: "DWA", nivelEstudios:"Ing."),
    Docente(nombres: "Angel", apellidos: "Novillo", carrera: "DWA", nivelEstudios:"Ing."),
    Docente(nombres: "Angel", apellidos: "Novillo", carrera: "DWA", nivelEstudios:"Ing."),
  ];

  int indiceDocente = 0;

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
              
              title: Text("${docente1.nivelEstudios} ${docente1.nombres} ${docente1.apellidos} ${docente1.carrera} "),
              
              subtitle: Text("Desarrollo Aplicaciones Web"),
              trailing: Icon(Icons.star, color: const Color.fromARGB(255, 163, 208, 245)),
            ),
            Divider(),

            ListTile(
              leading: Icon(Icons.person, color: Colors.blue),
              title: Text("${listaDocente[indiceDocente].nivelEstudios}${listaDocente[indiceDocente].nombres}${listaDocente[indiceDocente].apellidos}"),
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
          ],
        ),
      ),
    );
  }
}