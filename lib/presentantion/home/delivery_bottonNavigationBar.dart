import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:proyecto_deliviery_app/presentantion/theme.dart';

class DeliveryBottonNavigationBar extends StatelessWidget {
  final int index;
  final ValueChanged<int> onIndexSelect;

  const DeliveryBottonNavigationBar({Key key, this.index, this.onIndexSelect})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0),
      child: DecoratedBox(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Theme.of(context).canvasColor,
          border: Border.all(
            color: Theme.of(context).bottomAppBarColor
          )
        ),
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Material(
                child: IconButton(
                  icon: Icon(Icons.home),
                  onPressed: () => onIndexSelect(0),
                  color: index == 0 ? DeliveryColors.green : DeliveryColors.ligthGrey,
                ),
              ),
              Material(
                child: IconButton(
                  icon: Icon(Icons.store),
                  onPressed: () => onIndexSelect(1),
                  color: index == 1 ? DeliveryColors.green : DeliveryColors.ligthGrey,
                ),
              ),
              Material(
                child: CircleAvatar(
                  backgroundColor: DeliveryColors.purple,
                  child: IconButton(
                    icon: Icon(Icons.shopping_basket),
                    onPressed: () => onIndexSelect(2),
                    color: index == 2 ? DeliveryColors.green : DeliveryColors.white,
                  ),
                ),
              ),
              Material(
                child: IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () => onIndexSelect(3),
                  color: index == 3 ? DeliveryColors.green : DeliveryColors.ligthGrey,
                ),
              ),
              InkWell(
                onTap: () => onIndexSelect(4),
                child: CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.red,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
