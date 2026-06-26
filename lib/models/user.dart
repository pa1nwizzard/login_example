class User {
  final int? id;
  final String login;
  final String password;

  const User({
    this.id,
    required this.login,
    required this.password
  });


  Map<String, dynamic> toMap() {
    return {
      "id" : id,
      "login" : login,
      "password" : password
    };
  }

  @override
  String toString() {
    return "(id: $id, login: $id, password: $password)";
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      login: map['login'],
      password: map['password'],
    );
  }
}