import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'docente.dart';

class DirectorioScreen extends StatefulWidget {
  const DirectorioScreen({super.key});

  @override
  State<DirectorioScreen> createState() => _DirectorioScreenState();
}

class _DirectorioScreenState extends State<DirectorioScreen> {
  late Box<Docente> _caja;

  @override
  void initState() {
    super.initState();
    
    _caja = Hive.box<Docente>('docentes');
    _sembrarDatos(); 
  }

  void _sembrarDatos() {
    if (_caja.isEmpty) {
      _caja.addAll([
        Docente(nombres: 'Angel', apellidos: 'Novillo', carrera: 'DWA', nivelEstudios: 'Ing.'),
        Docente(nombres: 'Israel', apellidos: 'Zurita', carrera: 'DWA', nivelEstudios: 'Ing.'),
        Docente(nombres: 'Cecilia', apellidos: 'Naula', carrera: 'DWA', nivelEstudios: 'Ing.'),
        Docente(nombres: 'Cristhian', apellidos: 'Duran', carrera: 'AGRICOLA', nivelEstudios: 'Ing.'),
        Docente(nombres: "Jhonn", apellidos: "Melendez", carrera: "INGLES", nivelEstudios: "Mister."),
      ]);
    }
  }

  void _agregarDocente() {
    _caja.add(Docente(
      nombres: 'Nuevo', 
      apellidos: 'Docente',
      nivelEstudios: 'Ing.', 
      carrera: 'DWA',
    ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Directorio IST La Troncal"),
        backgroundColor:  Color.fromARGB(255, 22, 90, 227),
        foregroundColor:  Color.fromARGB(255, 236, 198, 46),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _agregarDocente,
        backgroundColor: Color.fromARGB(255, 22, 90, 227),
        foregroundColor: Colors.white,
        child:Icon(Icons.add),
      ),
      body: ValueListenableBuilder(
        valueListenable: _caja.listenable(),
        builder: (context, Box<Docente> caja, _) {
          if (caja.isEmpty) {
            return  Center(child: Text('No hay docentes en el directorio.'));
          }

          return ListView.separated(
            padding: EdgeInsets.all(18),
            itemCount: caja.length,
            separatorBuilder: (_, __) => Divider(),
            itemBuilder: (context, index) {
              final d = caja.getAt(index)!;

              return ListTile(
                leading: Icon(Icons.person, color: Colors.blue),
                title: Text('${d.nivelEstudios} ${d.nombres} ${d.apellidos}'),
                subtitle: Text(d.carrera),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    IconButton(
                      icon: Icon(
                        d.esFavorito ? Icons.star : Icons.star_border,
                        color: d.esFavorito ? Colors.amber : Colors.grey,
                      ),
                      onPressed: () {
                        d.esFavorito = !d.esFavorito;
                        d.save(); 
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.delete, color: Colors.red),
                      onPressed: () => d.delete(),
                    ),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}