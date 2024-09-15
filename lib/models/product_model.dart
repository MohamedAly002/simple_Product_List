class ProductModel {
  final String name;
  final String image;
  final String price;
  final String description;
  final String rate;

  ProductModel({
    required this.name,
    required this.image,
    required this.price,
    required this.description,
    required this.rate,
  });

  factory ProductModel.fromjson(Map<String, dynamic> json) {
    return ProductModel(
      name: json['title'],
      image: json['image'],
      price: json['price'].toString(),
      description: json['description'],
      rate: json['rating']["rate"].toString(),
    );
  }
}
