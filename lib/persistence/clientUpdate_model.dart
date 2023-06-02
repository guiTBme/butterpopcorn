class UserUpdateModel {
  final String pwd;
  final String photoProfile;
  final String nome;

  const UserUpdateModel(
      {required this.pwd, required this.photoProfile, required this.nome});

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'password': pwd,
      'imagem': photoProfile,
    };
  }

  @override
  String toString() {
    return 'UsersModel{nome: $nome, senha: $pwd, photoPhofile: $photoProfile}';
  }
}
