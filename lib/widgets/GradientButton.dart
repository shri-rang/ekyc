import 'package:flutter/material.dart';

class GradientButton extends StatefulWidget {
  String? title;
  GradientButton({Key? key, this.title}) : super(key: key);

  @override
  State<GradientButton> createState() => _GradientButtonState();
}

class _GradientButtonState extends State<GradientButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
          child: Text(
        widget.title!,
        style: Theme.of(context)
            .textTheme
            .headline2!
            .copyWith(color: Color(0xff0E1023)),
      )),
      width: double.infinity,
      height: 46,
      decoration: BoxDecoration(
        gradient:
            LinearGradient(colors: [Color(0xFFFCAF17), Color(0xFFFEDE9E)]),
        borderRadius: BorderRadius.only(
            topRight: Radius.circular(16), bottomLeft: Radius.circular(16)),
      ),
    );
  }
}
