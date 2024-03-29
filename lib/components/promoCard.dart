import 'package:flutter/material.dart';
import 'package:flutter_ui_day1/screens/cardDetails.dart';

Widget promoCard(BuildContext context, image) {
  void onTapAction() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => CardDetails()));
  }

  return AspectRatio(
    aspectRatio: 2.62 / 3,
    child: GestureDetector(
      onTap: () => onTapAction(),
      child: Container(
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.circular(20),
            image:
                DecorationImage(fit: BoxFit.cover, image: NetworkImage(image))),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(begin: Alignment.bottomRight, stops: [
                0.1,
                0.9
              ], colors: [
                Colors.black.withOpacity(.8),
                Colors.black.withOpacity(.1)
              ])),
        ),
      ),
    ),
  );
}
