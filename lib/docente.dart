class Docente {
  final String nombres;
  final String apellidos;
  final String carrera;
  final String nivelEstudios;
  String cargo;
  bool activo;


  Docente(
    {required this.nombres, 
    required this.apellidos,  
    required this.carrera, 
    required this.nivelEstudios,
    this.cargo = "por definir",
    this.activo = true});
}