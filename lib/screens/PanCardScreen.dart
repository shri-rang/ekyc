import 'package:ekyc/screens/Colors.dart';
import 'package:ekyc/widgets/CommanWidget.dart';
import 'package:ekyc/widgets/GradientButton.dart';
import "package:flutter/material.dart";
import 'package:get/get.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textWidget("PAN Card", context),
                smallText("Step 1/3", context, false),
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
                  height: 300,
                  child: Column(
                    children: [
                      textWidget("Upload PAN Card", context),
                      image("assets/image 6.png"),
                      smallText("UPLOAD GUIDELINES", context, false),
                      smallText(
                          "1. Capture the entire PAN Card", context, false),
                      smallText(
                          "2. Turn off the flash while clicking the picture",
                          context,
                          false),
                      smallText(
                          "3. Make sure PAN number, name & date of birth are clearly visible",
                          context,
                          false),
                      GestureDetector(
                          onTap: () {},
                          child: GradientButton(
                            title: "Camera",
                          )),
                      smallText("Or Upload From Gallery", context, false),
                    ],
                  ),
                ));
              },
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: litePurple)),
                child: Row(
                  children: [
                    smallText(
                        "Upload a photo of your PAN Card", context, false),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 130,
        width: double.infinity,
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
