import 'package:flutter/material.dart';
import 'docente.dart';
import 'docentetile.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Docente> listaDocente = [
      Docente(nombres: "Angel", apellidos: "Novillo", carrera: "DWA", nivelEstudios: "Ing."),
      Docente(nombres: "Israel", apellidos: "Zurita", carrera: "DWA", nivelEstudios: "Ing."),
      Docente(nombres: "Cecilia", apellidos: "Naula", carrera: "DWA", nivelEstudios: "Ing."),
      Docente(nombres: "Cristhian", apellidos: "Duran", carrera: "AGRICOLA", nivelEstudios: "Ing."),
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Directorio IST La Troncal"),
          backgroundColor: const Color.fromARGB(255, 22, 90, 227), 
          foregroundColor: const Color.fromARGB(255, 236, 198, 46),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(18),
          itemCount: listaDocente.length,
          separatorBuilder: (context, index) => const Divider(),
          itemBuilder: (context, index) {

            return DocenteTile(docente: listaDocente[index]);
          },
        ),
      ),
    );
  }
}