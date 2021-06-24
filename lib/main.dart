import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:inter_down/screens/sign_in/sing_in_screen.dart';
import 'package:inter_down/style_guide.dart';
import 'package:inter_down/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: theme(),
      initialRoute: SignInScreen.routeName,
      routes: routes,
    );
  }
}
