

import "package:flutter/material.dart";
import 'package:flutter_svg/flutter_svg.dart';


  
  class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
       
           TextEditingController _emailController = TextEditingController();
   
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
              padding:  const EdgeInsets.symmetric( horizontal: 15 ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                    
                       SizedBox(
                        height: 25,
                      ),
                   Text("Please verify your email address",
                    style: Theme.of(context).textTheme.headline1,
                   ),
                    SizedBox(
                        height: 100,
                      ),
                    Text(
                      "Email Address",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                    SizedBox(
                        height: 6,
                      ),
                    TextFormField(
                      controller: _emailController,
                       keyboardType: TextInputType.number,
                      decoration:  const InputDecoration(
                        // prefixStyle: TextStyle(
                        //   color: Colors.white
                        //  ),
                        
                        //  prefixText: "+91" ,
                      
                      
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
               
                Row(
                  children: [
                    Container(
                       width: MediaQuery.of(context).size.width/2.3,
                       child: Divider(
                      color: Color(0xFFFFFFFF),
                    )),
                      Text("OR",
                      style: Theme.of(context).textTheme.headline2,
                      ),
                        Container(
                       width:  MediaQuery.of(context).size.width/2.3,
                       child: Divider(
                      color: Colors.white,
                    )),
      
      
      
      
                  ],
                ),
                   SizedBox(
                    height: 20,
                     ),   
      
                      // SvgPicture.asset(
                      //       "googleicon.svg"
                      //       // ,width: 100,
                      //       //  height: 100,
                      //   ),
                 
                      // Image.asset("googly.png"),

                       Container(
                        width: double.infinity,
                        height: 50,

                        decoration: BoxDecoration(
                             gradient:
                           LinearGradient(colors: [Color(0xFF79789B), Color(0xFF424161)]),
                         borderRadius: BorderRadius.circular(6),
                              boxShadow: [BoxShadow(
                              color: Colors.grey,
                              blurRadius: 2.0,
                            ),]
                        ),
                            child:  Row(
                              // crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [  
                                  Image.asset("icongoogle.png",
                                    width: 20,
                                    height: 20,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                   Text("Continue with Google",
                                    style: Theme.of(context).textTheme.labelMedium,
                                   )   
                              ],
                            )  ,
                       ),
                 
              // ElevatedButton(
                 
              //   onPressed: (){}, child:  Text("Continue with Google") ),
                     
                   SizedBox(
                    height: 20,
                     ), 
                Container(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(

                  onPressed: () {},
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
}