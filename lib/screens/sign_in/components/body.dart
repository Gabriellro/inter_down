import 'package:flutter/material.dart';
import 'package:inter_down/components/social_card.dart';
import 'package:inter_down/screens/home/home_screen.dart';
import 'package:inter_down/screens/sign_up/sign_up_screen.dart';

import '../../../style_guide.dart';
import 'sign_form.controller.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            // Header(),
            SizedBox(height: 30),
            Image.asset(
              "assets/images/Faixa.png",
              height: 150,
            ),
            SizedBox(height: 10),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Inter",
                    style: kStyleDisplay.copyWith(
                      color: amarelo,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(3.0, 1.5),
                          blurRadius: 1.0,
                          color: cinza,
                        ),
                      ],
                    ),
                  ),
                  TextSpan(
                    text: "Down",
                    style: kStyleDisplay.copyWith(
                      color: azul,
                      shadows: <Shadow>[
                        Shadow(
                          offset: Offset(3.0, 1.5),
                          blurRadius: 1.0,
                          color: cinza,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 50),
            SignFormController(),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 96,
                    height: 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: azulClaro,
                    ),
                  ),
                  Container(
                    width: 100,
                    child: Text(
                      "Ou entre com",
                      style: kStyleSubTitle.copyWith(color: preto),
                    ),
                  ),
                  Container(
                    width: 96,
                    height: 3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: azulClaro,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialCard(
                  icon: "assets/icons/google-icon.svg",
                  press: HomeScreen.routeName,
                ),
                SocialCard(
                  icon: "assets/icons/facebook-2.svg",
                  press: HomeScreen.routeName,
                ),
                SocialCard(
                  icon: "assets/icons/twitter.svg",
                  press: HomeScreen.routeName,
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Não tem uma conta? ",
                  style: kStyleSubTitle.copyWith(color: preto),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                      PageRouteBuilder(
                        pageBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secondaryAnimation) {
                          return SignUpScreen();
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
                  child: Text(
                    "Inscrever-se",
                    style: kStyleSubTitle.copyWith(
                      color: azulEscuro,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 22),
          ],
        ),
      ),
    );
  }
}
