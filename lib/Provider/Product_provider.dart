import 'package:flutter/material.dart';
import '../Models/product_model.dart';
import '../services/Product_Services.dart';
class ProductsProvider extends ChangeNotifier{
  List<ProductsModel> products = [];
  Future<void> getProducts() async {
    products = await Productsservices.GetProducts();
    notifyListeners();
  }
}