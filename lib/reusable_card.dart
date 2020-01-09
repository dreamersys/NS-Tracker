import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({@required this.clickColor, this.cardChild, this.onPress});

  final Color clickColor;
  final Widget cardChild;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(8),
        decoration: BoxDecoration(
//          color: clickColor,

            color: clickColor,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black38.withAlpha(90),
                blurRadius: 5.0,
              ),
            ]),
      ),
    );
  }
}
