import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class IconBtnForPlans extends StatelessWidget {
  const IconBtnForPlans({
    Key key,
    @required this.icon,
    this.numOfItems = 0,
    @required this.press,
  }) : super(key: key);

  final IconData icon;
  final int numOfItems;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      borderRadius: BorderRadius.circular(50),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            height: 26,
            width: 26,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Icon(icon),
          ),
        ],
      ),
    );
  }
}
