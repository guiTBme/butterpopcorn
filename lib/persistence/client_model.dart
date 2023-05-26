class UsersModel {
  final int id;
  final String name;
  final String pwd;
  final String email;
  final String photoProfile;

  const UsersModel(
      {required this.id,
      required this.name,
      required this.pwd,
      required this.email,
      required this.photoProfile});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'senha': pwd,
      'email': email,
      'photoProfile': photoProfile,
    };
  }

  // Implement toString to make it easier to see information about
  // each dog when using the print statement.
  @override
  String toString() {
    return 'UsersModel{id: $id, name: $name, senha: $pwd, email: $email, photoPhofile: $photoProfile}';
  }
}
