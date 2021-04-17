import 'package:flutter/material.dart';
import 'package:proyecto_deliviery_app/presentantion/theme.dart';

class DeliveryButton extends StatelessWidget {
  final String title;
  final VoidCallback ontap;
  final EdgeInsets padding;

  const DeliveryButton({Key key, this.title, this.ontap,this.padding = const EdgeInsets.all(14.0),}); 
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Padding(
        padding: EdgeInsets.all(25.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              begin: Alignment.centerRight,
              end: Alignment.centerLeft,
              colors: deliverygrandiant,
            ),
          ),
          child: Padding(
            padding: padding, 
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
