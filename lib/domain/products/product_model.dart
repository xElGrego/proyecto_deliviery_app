import 'package:meta/meta.dart';

class Product {
  const Product({
    @required this.name,
    @required this.description,
    @required this.price,
    @required this.image,
  });
  final String name;
  final String description;
  final int price;
  final String image;
}
