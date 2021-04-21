import 'package:flutter/material.dart';
import 'package:proyecto_deliviery_app/data/in_memory_products.dart';
import 'package:proyecto_deliviery_app/domain/products/product_model.dart';
import 'package:proyecto_deliviery_app/presentantion/theme.dart';
import 'package:proyecto_deliviery_app/presentantion/widgets/botton_delivery.dart';

class CardScreen extends StatelessWidget {
  final VoidCallback onShopping;

  const CardScreen({Key key, this.onShopping}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Cart"),
      ),
      body: _FullCard(),
    );
  }
}

class _FullCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.all(10),
            child: Container(
              child: ListView.builder(
                itemExtent: size / 3.2,
                itemCount: products.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final product = products[index];
                  return CardItem(product: product);
                },
              ),
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
              color: Theme.of(context).canvasColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(35.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Subtotal",
                              style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontSize: 25,
                              ),
                            ),
                            Text(
                              '15',
                             style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontSize: 25,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Delivery",
                              style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontSize: 22,
                              ),
                            ),
                            Text(
                              'Free',
                             style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontSize: 22,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total",
                              style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              '15',
                             style: TextStyle(
                                color: Theme.of(context).accentColor,
                                fontSize: 25,
                                 fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Spacer(),
                  DeliveryButton(
                    title: 'Checkout',
                    ontap: () {
                      print("Checkout");
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class CardItem extends StatelessWidget {
  final Product product;

  const CardItem({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Stack(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Theme.of(context).canvasColor,
            elevation: 8,
            child: Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 3,
                    child: CircleAvatar(
                      backgroundColor: DeliveryColors.dark,
                      child: ClipOval(
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
                  Expanded(
                    flex: 2,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          product.name,
                          textAlign: TextAlign.center,
                        ),
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
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  color: DeliveryColors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: InkWell(
                                  child: Icon(
                                    Icons.add,
                                    color: DeliveryColors.dark,
                                  ),
                                  onTap: () {},
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.symmetric(horizontal: 15),
                                child: Text("2"),
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  color: DeliveryColors.purple,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: InkWell(
                                  child: Icon(
                                    Icons.add,
                                    color: DeliveryColors.white,
                                  ),
                                  onTap: () {},
                                ),
                              ),
                              Spacer(),
                              Text(
                                "\$${product.price}",
                                style: TextStyle(color: Theme.of(context).accentColor),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: InkWell(
              onTap: () {},
              child: CircleAvatar(
                backgroundColor: DeliveryColors.pink,
                child: Icon(
                  Icons.delete_outlined,
                  color: DeliveryColors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _EmtpyCard extends StatelessWidget {
  const _EmtpyCard({@required this.onShopping});

  final VoidCallback onShopping;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/imagenes/sad.png',
          height: 280,
        ),
        SizedBox(height: 20),
        Text(
          "There are not products",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        SizedBox(height: 20),
        Center(
          child: ElevatedButton(
            onPressed: onShopping,
            child: Text(
              "Shopping cart",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              primary: DeliveryColors.purple,
            ),
          ),
        ),
      ],
    );
  }
}
