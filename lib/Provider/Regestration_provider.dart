import 'package:flutter/material.dart';
import '../Models/Registration_model.dart';
import '../services/Registration.dart';
class RegistrationProvider extends ChangeNotifier {
  RegistrationModel? user;
  Future<void> Login({required String email, required String password}) async {
    user = await RegistrationServices.Login(email, password);
    notifyListeners();
  }

  Future<void> SignUp
      (
      {required String email,
        required String password,
        required String name,
        required String number}
      ) async
  {
    user = await RegistrationServices.SignUp(email, password, name, number);
    notifyListeners();
  }
}
