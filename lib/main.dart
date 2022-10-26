import 'package:ekyc/screens/DocumentScreen.dart';
import 'package:ekyc/screens/VerifyEmailScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'screens/OtpverifyScreen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          // primarySwatch: Colors.blue,
          primaryColor: Color(0xff16182C),
          textTheme: TextTheme(
            headline3: GoogleFonts.lato(
                fontSize: 12, fontWeight: FontWeight.w400, color: Colors.white),
            headline1: GoogleFonts.lato(
                fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white),
            headline2: GoogleFonts.lato(
                fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white),
            labelMedium: GoogleFonts.poppins(
                fontSize: 14, fontWeight: FontWeight.w600, color: Colors.white),
            subtitle1: GoogleFonts.lato(
                fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white),
            subtitle2: GoogleFonts.lato(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Color(0xff16182C)),
          )),
      home: DocumentScreen(),
    );
  }
}
