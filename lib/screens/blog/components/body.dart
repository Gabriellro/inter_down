import 'package:flutter/material.dart';
import 'package:inter_down/components/header.dart';
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
            Header(),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  width: 360,
                  height: 600,
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
