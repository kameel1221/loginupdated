import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
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
            height: 36,
            width: 36,
            decoration: BoxDecoration(
              color: kPrimaryColor.withOpacity(.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon),
          ),
          if (numOfItems != 0)
            Positioned(
              top: -3,
              right: 0,
              child: Container(
                height: 16,
                width: 16,
                decoration: BoxDecoration(
                  color: Color(0xFFFF4848),
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Text(
                    '$numOfItems',
                    style: TextStyle(
                      fontSize: 10,
                      height: 1,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
