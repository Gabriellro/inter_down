import 'package:flutter/material.dart';
import 'package:inter_down/models/destaques_model.dart';

import '../../../style_guide.dart';

// ignore: must_be_immutable
class DestaquesController extends StatefulWidget {
  PostModel destaquesModel;
  DestaquesController({
    Key? key,
    required this.destaquesModel,
  }) : super(key: key);
  @override
  _DestaquesControllerState createState() => _DestaquesControllerState();
}

class _DestaquesControllerState extends State<DestaquesController> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 20),
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 250,
              height: 250,
              child: Image.network(
                widget.destaquesModel.bg,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 250,
            height: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.transparent,
                  Colors.black.withOpacity(0.7),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 220,
                  child: Text(
                    widget.destaquesModel.titulo,
                    overflow: TextOverflow.ellipsis,
                    style: kStyleTitle2.copyWith(color: branco),
                  ),
                ),
                Text(
                  widget.destaquesModel.date,
                  style: kStyleDate.copyWith(
                    color: branco.withOpacity(0.3),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
