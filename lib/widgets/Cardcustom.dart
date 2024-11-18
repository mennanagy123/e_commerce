import 'package:flutter/material.dart';

import '../Models/product_model.dart';
import '../Screens/ProductDetailsPage.dart';

class CardProductCustome extends StatelessWidget {
  CardProductCustome({super.key, required this.model});

  ProductsModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Card(
          elevation: 10,
          child: Center(
            child: Column(
              children: [
                InkWell(
                  onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Productsdeatils(
                          products: model,
                        ),
                      )),
                  child: Container(
                    width: 150,
                    height: 150,
                    child: Image(
                      image: NetworkImage(model.img),
                    ),
                  ),
                ),
                Text(
                  model.name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
