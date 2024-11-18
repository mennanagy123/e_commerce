import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../Provider/Product_provider.dart';
import '../widgets/Cardcustom.dart';

class ProductsPage extends StatelessWidget {
  const ProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Products Page😊"),
        ),
        body: Consumer<ProductsProvider>(
          builder: (context, value, child) {
            if (value.products.isEmpty) {
              value.getProducts();
              return const Center(child: CircularProgressIndicator());
            }
            return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: 10,
                itemBuilder: (context, index) =>
                    CardProductCustome(model: value.products[index]));
          },
        ));
  }
}
