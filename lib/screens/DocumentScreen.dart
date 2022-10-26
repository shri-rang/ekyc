import 'package:ekyc/screens/Colors.dart';
import 'package:ekyc/screens/PanCardScreen.dart';
import 'package:ekyc/widgets/CommanWidget.dart';
import 'package:ekyc/widgets/GradientButton.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';

class DocumentScreen extends StatefulWidget {
  const DocumentScreen({Key? key}) : super(key: key);

  @override
  State<DocumentScreen> createState() => _DocumentScreenState();
}

class _DocumentScreenState extends State<DocumentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff16182C),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: puprle,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 19,
            ),
            Text(
              "Documents you must keep handy!",
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(
              height: 30,
            ),
            textWidget("1. PAN Card", context),
            const SizedBox(
              height: 8,
            ),
            image("assets/image 6.png"),
            const SizedBox(
              height: 30,
            ),
            textWidget("2. Bank account details", context),
            const SizedBox(
              height: 8,
            ),
            image("assets/image 7.png"),
            const SizedBox(
              height: 30,
            ),
            textWidget("3. Aadhaar Card", context),
            const SizedBox(
              height: 8,
            ),
            image("assets/image 5.png"),
            const SizedBox(
              height: 110,
            ),
            GestureDetector(
              onTap: () {
                Get.to(PanCardScreen());
              },
              child: GradientButton(
                title: "PROCEED WITH KYC",
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Center(child: smallText("Explore the App", context, true))
          ],
        ),
      ),
    );
  }
}
