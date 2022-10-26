import 'package:ekyc/screens/Colors.dart';
import 'package:flutter/material.dart';

Widget smallText(String title, BuildContext context, Color color) {
  return Text(
    title,
    style: color != Colors.white
        ? Theme.of(context).textTheme.subtitle1!.copyWith(color: color)
        : Theme.of(context).textTheme.subtitle1!,
  );
}

Widget tinyText(String title, BuildContext context, Color color) {
  return Text(
    title,
    style: color != Colors.white
        ? Theme.of(context).textTheme.headline3!.copyWith(color: color)
        : Theme.of(context).textTheme.headline3!,
  );
}

Widget mediumText(
  String title,
  BuildContext context,
) {
  return Text(
    title,
    style:
        // ? Theme.of(context).textTheme.subtitle1!.copyWith(color: orange)
        Theme.of(context).textTheme.subtitle1!,
  );
}

Widget textWidget(String title, BuildContext context) {
  return Text(
    title,
    style: Theme.of(context).textTheme.headline1,
  );
}

Widget image(String img) {
  return Image.asset(
    img,
    height: img == "assets/image 7.png" ? 83 : 115,
    width: 193,
    fit: BoxFit.fill,
  );
}
