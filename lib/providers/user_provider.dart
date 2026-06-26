import 'package:flutter/material.dart';
import 'package:login_example/models/user.dart';
import 'package:login_example/database/database_helper.dart';

class UserProvider extends ChangeNotifier {

  User? _user;
  bool get isLoggedIn => _user != null;
  User? get user => _user;

  void addUser(User user) {
    insertUser(user);
    _user = user;
    notifyListeners();
  }

  Future<void> login(String login, String password) async {
    Future<User?> user = getUser(login, password);
    _user = await user;
    notifyListeners();
  }

  void logout() {
    _user = null;
    notifyListeners();
  }
}