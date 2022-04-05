import 'package:cloud_firestore/cloud_firestore.dart';

class Users {
  final String? email;
  final String? id;

  Users({
    this.email,
    this.id,
  });

  Future<void> addUser(email, id) {
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    return users
        .doc(id)
        .set({'email': email})
        .then((value) => print("Usuário adicionado"))
        .catchError((error) => print("Erro ao adicionar usuário: $error"));
  }
}
