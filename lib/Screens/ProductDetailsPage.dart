import 'package:flutter/material.dart';
import '../Models/product_model.dart';

class Productsdeatils extends StatelessWidget {
  Productsdeatils({super.key, required this.products});

  ProductsModel products;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Products Details Page"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Expanded(
            child: Column(
              children: [
                Image(image: NetworkImage(products.img)),
                Text(products.name),
                Text("${products.price}"),
                Text(products.description)
              ],
            )),
      ),
    );
  }
}
