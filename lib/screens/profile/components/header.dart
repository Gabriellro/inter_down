import 'package:flutter/material.dart';
import 'package:inter_down/screens/sign_in/sing_in_screen.dart';

import '../../../style_guide.dart';

// ignore: must_be_immutable
class Header extends StatefulWidget {
  Header({
    Key? key,
  }) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 16, right: 36),
      child: Container(
        height: 56,
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back_ios_rounded,
                  color: azulEscuro,
                ),
              ),
            ),
            Spacer(),
            Container(
              width: 48,
              height: 48,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation) {
                        return SignInScreen();
                      },
                      transitionsBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation,
                          Widget child) {
                        return Align(
                          child: SlideTransition(
                            position: Tween(
                              begin: Offset(1.0, 0.0),
                              end: Offset(0.0, 0.0),
                            ).animate(animation),
                            child: child,
                          ),
                        );
                      },
                      transitionDuration: Duration(milliseconds: 400),
                    ),
                  );
                },
                child: Icon(Icons.exit_to_app_rounded, color: Colors.red),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
