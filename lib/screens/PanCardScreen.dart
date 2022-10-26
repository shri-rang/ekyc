import 'package:ekyc/screens/Colors.dart';
import 'package:ekyc/widgets/Button.dart';
import 'package:ekyc/widgets/CommanWidget.dart';
import 'package:ekyc/widgets/GradientButton.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';

import 'BankDetails.dart';

class PanCardScreen extends StatefulWidget {
  const PanCardScreen({Key? key}) : super(key: key);

  @override
  State<PanCardScreen> createState() => _PanCardScreenState();
}

class _PanCardScreenState extends State<PanCardScreen> {
  TextEditingController _panCardController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
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
                textWidget("PAN Card", context),
                smallText("Step 1/3", context, Colors.white),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            mediumText(
              "PAN Card",
              context,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _panCardController,
              maxLength: 10,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixStyle: TextStyle(color: Colors.white),
                // prefixText: "+91",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    // width: 3,
                    color: litePurple,
                  ), //<-- SEE HERE
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    // width: 3,
                    color: litePurple,
                  ), //<-- SEE HERE
                ),
              ),
            ),
            mediumText(
              "Date Of Birth",
              context,
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              controller: _panCardController,
              maxLength: 10,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                prefixStyle: TextStyle(color: Colors.white),
                // prefixText: "+91",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    // width: 3,
                    color: litePurple,
                  ), //<-- SEE HERE
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    // width: 3,
                    color: litePurple,
                  ), //<-- SEE HERE
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.bottomSheet(
                    // backgroundColor: Colors.white,
                    Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                        colors: [Color(0xFF424161), Color(0xFF16182C)]),
                  ),
                  height: 450,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                        child: RotatedBox(
                            quarterTurns: 3,
                            child: Icon(
                              Icons.arrow_back_ios,
                              color: Colors.white,
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      textWidget("Upload PAN Card", context),
                      SizedBox(
                        height: 10,
                      ),
                      image("assets/image 6.png"),
                      SizedBox(
                        height: 10,
                      ),
                      smallText("UPLOAD GUIDELINES", context, litePurple),
                      SizedBox(
                        height: 8,
                      ),
                      smallText("1. Capture the entire PAN Card", context,
                          litePurple),
                      SizedBox(
                        height: 8,
                      ),
                      smallText(
                          "2. Turn off the flash while clicking the picture",
                          context,
                          litePurple),
                      SizedBox(
                        height: 8,
                      ),
                      smallText(
                          "3. Make sure PAN number, name & date of birth are clearly visible",
                          context,
                          litePurple),
                      SizedBox(
                        height: 30,
                      ),
                      GestureDetector(
                          onTap: () {},
                          child: GradientButton(
                            title: "Camera",
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      Center(
                          child: smallText(
                              "Or Upload From Gallery", context, orange)),
                    ],
                  ),
                ));
              },
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: litePurple)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/arrow.png",
                      height: 19,
                      width: 19,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    smallText("Upload a photo of your PAN Card", context,
                        Colors.white),
                  ],
                ),
              ),
            )
            
          ],
        ),
      ),
      bottomNavigationBar:
       Container(
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
                Get.to(BankDetails());
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
