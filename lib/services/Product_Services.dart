import 'package:dio/dio.dart';
import '../Models/product_model.dart';
class Productsservices {
  static Dio dio = Dio();

  static Future<List<ProductsModel>> GetProducts() async {
    try {
      List<ProductsModel> products = [];
      final response = await dio.get('https://student.valuxapps.com/api/home');
      if (response.statusCode == 200) {
        for (int i = 0; i < 10; i++) {
          products.add(ProductsModel.fromjson(response.data, i));
        }
        print(products);
        return products;
      } else {
        throw Exception("Getting Products Failed");
      }
    } catch (e) {
      throw Exception("Error $e");
    }
  }
}
