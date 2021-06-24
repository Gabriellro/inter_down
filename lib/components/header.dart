import 'package:flutter/material.dart';
import 'package:inter_down/screens/profile/profile_screen.dart';

import '../style_guide.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: (24)),
      child: Container(
        height: 56,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Inter",
                      style: kStyleTitle2.copyWith(
                        color: amarelo,
                      ),
                    ),
                    TextSpan(
                      text: "Down",
                      style: kStyleTitle2.copyWith(
                        color: azul,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            IconButton(
              icon: Icon(
                Icons.notifications_none_rounded,
                color: preto,
              ),
              onPressed: () {},
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  PageRouteBuilder(
                    pageBuilder: (BuildContext context,
                        Animation<double> animation,
                        Animation<double> secondaryAnimation) {
                      return ProfileScreen();
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
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  width: 30,
                  height: 30,
                  child: Image.asset(
                    "assets/images/annie.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
