import 'package:flutter/material.dart';
import 'package:inter_down/models/destaques_model.dart';
import 'package:inter_down/style_guide.dart';

// ignore: must_be_immutable
class PostScreen extends StatefulWidget {
  PostModel destaquesModel;
  PostScreen({Key? key, required this.destaquesModel}) : super(key: key);

  @override
  _PostScreenState createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        clipBehavior: Clip.none,
        physics: BouncingScrollPhysics(),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return [
            SliverAppBar(
              expandedHeight: 300,
              floating: false,
              pinned: true,
              elevation: 0,
              backgroundColor: Colors.white,
              leading: IconButton(
                icon: Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: azulClaro,
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
              title: Text(
                widget.destaquesModel.titulo,
                style: kStyleTitle.copyWith(
                  color: preto,
                ),
              ),
              flexibleSpace: FlexibleSpaceBar(
                collapseMode: CollapseMode.none,
                background: Image.network(
                  widget.destaquesModel.bg,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Expanded(
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16, vertical: 10),
              child: Column(
                children: [
                  Text(
                    widget.destaquesModel.resume + "\n",
                    style: kStyleTitle.copyWith(
                      color: preto,
                    ),
                  ),
                  Text(
                    widget.destaquesModel.resume + "\n",
                    style: kStyleTitle.copyWith(
                      color: preto,
                    ),
                  ),
                  Text(
                    widget.destaquesModel.resume + "\n",
                    style: kStyleTitle.copyWith(
                      color: preto,
                    ),
                  ),
                  Text(
                    widget.destaquesModel.resume + "\n",
                    style: kStyleTitle.copyWith(
                      color: preto,
                    ),
                  ),
                  Text(
                    widget.destaquesModel.resume + "\n",
                    style: kStyleTitle.copyWith(
                      color: preto,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
