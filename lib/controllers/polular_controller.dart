import 'package:flutter/material.dart';
import 'package:inter_down/models/destaques_model.dart';
import 'package:inter_down/screens/blog/Post/post_screen.dart';

import '../style_guide.dart';

// ignore: must_be_immutable
class PolularController extends StatefulWidget {
  PostModel destaquesModel;

  PolularController({
    Key? key,
    required this.destaquesModel,
  }) : super(key: key);

  @override
  _PolularControllerState createState() => _PolularControllerState();
}

class _PolularControllerState extends State<PolularController> {
  int positi = 0;

  @override
  Widget build(BuildContext context) {
    positi = widget.destaquesModel.index;
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () {
                setState(() {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation) {
                        return PostScreen(
                          destaquesModel: destaqueslist[positi],
                        );
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
                });
              },
              child: Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 8,
                      offset: Offset(2, 1),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Image.network(
                      widget.destaquesModel.bg,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 10),
          Expanded(
            flex: 2,
            child: Container(
              height: 80,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 1,
                    child: Text(
                      widget.destaquesModel.titulo,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: kStyleSubTitle.copyWith(color: preto),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: 200,
                      child: Text(
                        widget.destaquesModel.resume,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style:
                            kStyleDate.copyWith(color: preto.withOpacity(0.5)),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        widget.destaquesModel.date + " | ",
                        style:
                            kStyleDate.copyWith(color: preto.withOpacity(0.5)),
                      ),
                      Text(
                        widget.destaquesModel.date,
                        style:
                            kStyleDate.copyWith(color: preto.withOpacity(0.5)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
