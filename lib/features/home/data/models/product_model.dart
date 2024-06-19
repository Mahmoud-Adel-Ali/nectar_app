class ProductModel {
  final dynamic id;
  final String imgPath;
  final String name;
  final String description;
  final num price;

  ProductModel(
      {required this.id,
      required this.imgPath,
      required this.name,
      required this.description,
      required this.price});

  factory ProductModel.fromjson(Map<String, dynamic> json) => ProductModel(
        id: json['id'] as dynamic,
        imgPath: json['imgPath'] as String,
        name: json['name'] as String,
        description: json['description'] as String,
        price: json['price'] as num,
      );
}
