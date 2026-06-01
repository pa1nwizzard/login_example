import 'package:flutter/material.dart';
import 'package:login_example/models/user.dart';
import 'package:login_example/database/database_helper.dart';

class UserProvider extends ChangeNotifier {
  List<User> _users = [];

  List<User> get users => _users;

  void addUser(User user) {
    _users.add(user);
    insertUser(user);
    notifyListeners();
  }

  void removeUser(User user) {
    _users.remove(user);
    notifyListeners();
  }
}