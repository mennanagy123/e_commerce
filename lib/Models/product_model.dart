class ProductsModel {
  String img;
  String name;
  String description;
  num price;
  ProductsModel(
      {required this.img,
        required this.name,
        required this.description,
        required this.price});
  factory ProductsModel.fromjson(Map<String, dynamic> json, int index) {
    return ProductsModel(
        img: json["data"]["products"][index]["image"],
        name: json["data"]["products"][index]["name"],
        description: json["data"]["products"][index]["description"],
        price: json["data"]["products"][index]["price"]);
  }
}
