
import "package:flutter/material.dart";
import 'package:pinput/pinput.dart';





class OtpVerifyScreen extends StatefulWidget {
  const OtpVerifyScreen({super.key});

  @override
  State<OtpVerifyScreen> createState() => _OtpVerifyScreenState();
}

class _OtpVerifyScreenState extends State<OtpVerifyScreen> {
   TextEditingController _phoneController = TextEditingController();
    final pinController = TextEditingController();
  final focusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
    final focusedBorderColor = Color.fromRGBO(23, 171, 144, 1);
    final fillColor = Color.fromRGBO(243, 246, 249, 0);
    // Color borderColor = ;
      
  final defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: const TextStyle(
        fontSize: 22,
        color: Color.fromRGBO(30, 60, 87, 1),
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(9),
        border: Border.all(color: Color.fromRGBO(23, 171, 144, 0.4)),
      ),
    );
 
  @override
  Widget build(BuildContext context) {
     
    return Scaffold(
      backgroundColor: Color(0xff16182C),
      body: 
      SingleChildScrollView(
        child: Column(
          children: [
                  Container(
                        width: double.infinity,
                        height: 250,
                         child: Image.asset("bg.png",
                      //  width: double.infinity,
                      fit: BoxFit.fill,
                         ),
                       ),
            Padding(
              padding: const EdgeInsets.symmetric( horizontal: 15 ),
              child: Column(
                //  mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //  Image.asset("assets/bg.png")
                      SizedBox(
                        height: 20,
                      ),
                   Text("Let’s get you started!",
                    style: Theme.of(context).textTheme.headline1,
                   ),
                    SizedBox(
                        height: 100,
                      ),
                    Text(
                      "Mobile Number",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                       SizedBox(
                        height: 6,
                      ),
                    TextFormField(
                      controller: _phoneController,
                       maxLength: 10,
      
                       keyboardType: TextInputType.number,
                       decoration:  const InputDecoration(
                        prefixStyle: TextStyle(
                          color: Colors.white
                         ),
                        
                         prefixText: "+91" ,
                      
                      
                       enabledBorder: OutlineInputBorder(
      
                         borderSide: BorderSide(
                        // width: 3,
                        color: Colors.white,
                        ),         //<-- SEE HERE
                     ),
                   focusedBorder: 
                   OutlineInputBorder(
                    borderSide: BorderSide(
                        // width: 3,
                        color: Colors.white,
                        ),   //<-- SEE HERE
                     ),
                       ),
                   ),
                SizedBox(
                  height: 20,
                ),
                    


                Container(
                  width: double.infinity,
                  height: 48,
                  child:
                   ElevatedButton(
                  onPressed: () {
                    _showMyDialog();
                  },
                  child: Text('NEXT',
                   style: Theme.of(context).textTheme.subtitle2,
                  ),
                  style: ElevatedButton.styleFrom(
                  
                    // backgroundColor: Color(0xff34385A),
                    
                shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only( topRight:Radius.circular(16), bottomLeft:  Radius.circular(16) ) , // <-- Radius
                    ),
        ),
      ),
       ) 
      
      
      
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
           Widget animatedBorders() {
return Padding(
	padding: const EdgeInsets.all(8.0),
	child: Pinput(
	  
	),
);
}


  
   Future<void> _showMyDialog() async {
  return showDialog<void>(
    context: context,

    // barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
         
        insetPadding: EdgeInsets.zero,
        // insetPadding: EdgeInsets.zero,
        // contentPadding: EdgeInsets.zero,
        // clipBehavior: Clip.antiAliasWithSaveLayer,
        // title:  Text('Enter OTP',
        //  style: Theme.of(context).textTheme.headline1,
        // ),
         contentPadding: EdgeInsets.all(0.0),
        content: SingleChildScrollView(
          child: Container(
            
            decoration: const BoxDecoration(
              gradient:  LinearGradient(colors: [
                   Color(0xFF16182C),
                Color(0xFF424161)
               
                 ]),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric( horizontal: 10 ),
              child: ListBody(
                children: <Widget>[
                               SizedBox(
                              height: 40,
                            ),
                       Text('Enter OTP',
                         style: Theme.of(context).textTheme.headline1,
                       ),
                       Text("Enter the OTP sent to +91 9876543210",
                        style: Theme.of(context).textTheme.subtitle1,
                       ),
                        SizedBox(
                          height: 20,
                        ),
                          pinPut(),
                          SizedBox(
                          height: 20,
                        ),
                     Container(
                       child: Center(child: Text("VERIFY",
                         style: Theme.of(context).textTheme.headline2!.copyWith(
                          color: Color(0xff0E1023)
                         ),
                       )),
                      width: double.infinity,
                      height: 46,
                       
                      decoration: BoxDecoration(
                        gradient:  LinearGradient(colors: [Color(0xFFFCAF17), Color(0xFFFEDE9E)]),
                       borderRadius: BorderRadius.only( topRight:Radius.circular(16), bottomLeft:  Radius.circular(16)),
                        
                         ),
                     ),
                        SizedBox(
                          height: 20,
                        ), 

                ],
              ),
            ),
          ),
        ),
    
      );
    },
  );
}
 
 
  pinPut(){
    return  Directionality(
            // Specify direction if desired
            textDirection: TextDirection.ltr,
            child: 
            Pinput(
              controller: pinController,
              focusNode: focusNode,
              androidSmsAutofillMethod:
                  AndroidSmsAutofillMethod.smsUserConsentApi,
              listenForMultipleSmsOnAndroid: true,
              defaultPinTheme: defaultPinTheme,
              validator: (value) {
                return value == '2222' ? null : 'Pin is incorrect';
              },
              // onClipboardFound: (value) {
              //   debugPrint('onClipboardFound: $value');
              //   pinController.setText(value);
              // },
              hapticFeedbackType: HapticFeedbackType.lightImpact,
              onCompleted: (pin) {
                debugPrint('onCompleted: $pin');
              },
              onChanged: (value) {
                debugPrint('onChanged: $value');
              },
              cursor:
               Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(bottom: 9),
                    width: 22,
                    height: 1,
                    color: focusedBorderColor,
                  ),
                ],
              ),
              focusedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: focusedBorderColor),
                ),
              ),
              submittedPinTheme: defaultPinTheme.copyWith(
                decoration: defaultPinTheme.decoration!.copyWith(
                  color: fillColor,
                  borderRadius: BorderRadius.circular(19),
                  border: Border.all(color: focusedBorderColor),
                ),
              ),
              errorPinTheme: defaultPinTheme.copyBorderWith(
                border: Border.all(color: Colors.redAccent),
              ),
            ),
          );
  }

 
}