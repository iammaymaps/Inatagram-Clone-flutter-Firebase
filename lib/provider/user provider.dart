import 'package:flutter/material.dart';
import 'package:instagram_firebase/model/user.dart';
import 'package:instagram_firebase/resources/Auth_Methods.dart';

class UserProvider with ChangeNotifier {
  User? _user;

  final AuthMethods _authMethods = AuthMethods();

  User get getUser => _user!;

  Future<void> refreshUser() async {
    User user = await _authMethods.getUserDetails();
    _user = user;
    notifyListeners();
  }
}
