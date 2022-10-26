import 'package:ekyc/screens/Colors.dart';
import 'package:ekyc/widgets/Button.dart';
import 'package:ekyc/widgets/CommanWidget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BankDetails extends StatefulWidget {
  // const BankDetails({Key? key}) : super(key: key);

  @override
  State<BankDetails> createState() => _BankDetailsState();
}

class _BankDetailsState extends State<BankDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff16182C),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textWidget("Bank Account Details", context),
                smallText("Step 2/3", context, Colors.white),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            mediumText(
              "Please Select Your Bank",
              context,
            ),
            SizedBox(
              height: 110,
            ),
            Container(
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: litePurple)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/add.png",
                    height: 19,
                    width: 19,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  smallText("Add details of another bank account", context,
                      Colors.white),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: darkpurplr,
        height: 130,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                tinyText("100% secure and in compliance with regulations",
                    context, Colors.white),
              ],
            ),
            SizedBox(
              height: 19,
            ),
            GestureDetector(
              onTap: () {
                // Get.to(BankDetails());
              },
              child: Button(
                title: "Accept & submit",
              ),
            )
          ],
        ),
      ),
    );
  }
}
