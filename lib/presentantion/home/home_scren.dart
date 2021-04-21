import 'package:flutter/material.dart';
import 'package:proyecto_deliviery_app/presentantion/home/cart/cart.dart';
import 'package:proyecto_deliviery_app/presentantion/home/delivery_bottonNavigationBar.dart';
import 'package:proyecto_deliviery_app/presentantion/home/products/products_screen.dart';
import 'package:proyecto_deliviery_app/presentantion/home/profile/profile_scren.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: IndexedStack(
              index: currentindex,
              children: [
                ProductosScreen(),
                Text("Current Index 2 "),
                CardScreen(
                  onShopping: () {
                    setState(
                      () {
                        currentindex = 0;
                      },
                    );
                  },
                ),
                Text("Current Index 4 "),
                ProfileScreen()
              ],
            ),
          ),
          DeliveryBottonNavigationBar(
            index: currentindex,
            onIndexSelect: (index) {
              setState(() {
                currentindex = index;
              });
            },
          ),
        ],
      ),
    );
  }
}
