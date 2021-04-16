import 'package:flutter/material.dart';
import 'package:proyecto_deliviery_app/presentantion/home/delivery_bottonNavigationBar.dart';

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
                Text("Current Index 1 "),
                Text("Current Index 2 "),
                Text("Current Index 3 "),
                Text("Current Index 4 "),
                Text("Current Index 5 "),
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
          )
        ],
      ),
    );
  }
}
