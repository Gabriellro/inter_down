import 'package:flutter/material.dart';

import 'components/body.dart';

class BlogScreen extends StatelessWidget {
  static String routeName = "/Blog";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Body(),
          ],
        ),
      ),
    );
  }
}
