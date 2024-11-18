import 'package:dio/dio.dart';
import '../Models/Registration_model.dart';

class RegistrationServices {
  static Dio dio = Dio();

  static Future<RegistrationModel> Login(String email, String password) async {
    try {
      final response = await dio.post('https://student.valuxapps.com/api/login',
          data: {'email': email, 'password': password});
      if (response.statusCode == 200) {
        print(response.data);
        return RegistrationModel.fromjson(response.data);
      } else {
        throw Exception("Login failed");
      }
    } catch (e) {
      throw Exception("Error: $e");
    }
  }

  static Future<RegistrationModel> SignUp(
      String email, String password, String name, String number) async {
    try {
      final response = await dio
          .post('https://student.valuxapps.com/api/register', data: {
        'name': name,
        'email': email,
        'phone': number,
        'password': password
      });
      if (response.statusCode == 200) {
        print(response.data);
        return RegistrationModel.fromjson(response.data);
      } else {
        throw Exception("Sign up failed");
      }
    } catch (e) {
      throw Exception("Error: $e");
    }
  }
}
