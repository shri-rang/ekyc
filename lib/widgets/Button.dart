import 'package:ekyc/screens/Colors.dart';
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  String? title;
  Button({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        title!,
        style: Theme.of(context)
            .textTheme
            .headline2!
            .copyWith(color: Color(0xff0E1023)),
      )),
      width: double.infinity,
      height: 46,
      decoration: BoxDecoration(
        color: buttonColor,
        // gradient:
        //     LinearGradient(colors: [Color(0xFFFCAF17), Color(0xFFFEDE9E)]),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(16), bottomLeft: Radius.circular(16)),
      ),
    );
  }
}
