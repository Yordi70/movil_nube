class UserModel {
  String? uid;
  String? email;
  String? nombre;
  String? direccion;
  String? genero;
  String? telefono;

  UserModel(
      {this.uid,
      this.email,
      this.nombre,
      this.direccion,
      this.genero,
      this.telefono});

  // receiving data from server
  factory UserModel.fromMap(map) {
    return UserModel(
        uid: map['uid'],
        email: map['email'],
        nombre: map['nombre'],
        direccion: map['direccion'],
        genero: map['genero'],
        telefono: map['telefono']);
  }

  // sending data to our server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'nombre': nombre,
      'direccion': direccion,
      'genero': genero,
      'telefono': telefono
    };
  }
}
