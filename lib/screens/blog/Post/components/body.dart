import 'package:flutter/material.dart';
import 'package:inter_down/controllers/polular_controller.dart';

import 'package:inter_down/models/destaques_model.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 24, top: 20),
                  width: 360,
                  height: 400,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: destaqueslist.length,
                    itemBuilder: (context, index) => PolularController(
                      destaquesModel: destaqueslist[index],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
