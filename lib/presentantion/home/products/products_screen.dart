import 'package:flutter/material.dart';
import 'package:proyecto_deliviery_app/data/in_memory_products.dart';
import 'package:proyecto_deliviery_app/domain/products/product_model.dart';

class ProductosScreen extends StatelessWidget {
  const ProductosScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: products.length,
        itemBuilder: (context,index){
          final product = products[index];
          return ItemProduct(product:product);
        },
      ),
    );
  }
}


class ItemProduct extends StatelessWidget {
  final Product product ;

  const ItemProduct({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          Image.asset(product.image),
          Text(product.name),
          Text(product.description),
          Text("\$${product.price}"),
        ],),
      ),
    );
  }
}
