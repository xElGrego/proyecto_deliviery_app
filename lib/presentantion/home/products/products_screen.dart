import 'package:flutter/material.dart';
import 'package:proyecto_deliviery_app/data/in_memory_products.dart';
import 'package:proyecto_deliviery_app/domain/products/product_model.dart';
import 'package:proyecto_deliviery_app/presentantion/theme.dart';
import 'package:proyecto_deliviery_app/presentantion/widgets/botton_delivery.dart';

class ProductosScreen extends StatelessWidget {
  const ProductosScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Inicio"),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(20),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ItemProduct(product: product);
        },
      ),
    );
  }
}

class ItemProduct extends StatelessWidget {
  final Product product;

  const ItemProduct({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      color: Theme.of(context).canvasColor,
      elevation: 8,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: CircleAvatar(
                backgroundColor: DeliveryColors.dark,
                child: ClipOval(
                  child: Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(
                        product.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(product.name),
                  Text(
                    product.description,
                    style: Theme.of(context).textTheme.overline.copyWith(
                          color: DeliveryColors.ligthGrey,
                          fontSize: 12,
                        ),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "\$${product.price}",
                    style: TextStyle(color: Theme.of(context).accentColor),
                  ),
                ],
              ),
            ),
            DeliveryButton(
              padding: EdgeInsets.symmetric(
                vertical: 4,
              ),
              title: 'Add',
              ontap: () {
                print("Añadiendo al carrito");
              },
            ),
          ],
        ),
      ),
    );
  }
}
