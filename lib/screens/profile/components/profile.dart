import 'package:flutter/material.dart';
import 'package:inter_down/style_guide.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SizedBox(
                width: (110),
                height: (110),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Stack(
                    children: [
                      Container(
                        width: (110),
                        height: (110),
                        child: Image.asset(
                          "assets/images/annie.jpg",
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0xFF343434).withOpacity(0.4),
                              Color(0xFF343434).withOpacity(0.15),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: (20),
              ),
              Padding(
                padding: EdgeInsets.only(top: (40)),
                child: Text(
                  'Annie Silva',
                  style: kStyleDisplay.copyWith(color: branco),
                ),
              ),
            ],
          ),
          SizedBox(
            height: (20),
          ),
        ],
      ),
    );
  }
}
