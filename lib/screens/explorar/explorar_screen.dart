import 'package:flutter/material.dart';

import 'components/body.dart';

class ExplorarScreen extends StatelessWidget {
  static String routeName = "/ExplorarScreen";
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
