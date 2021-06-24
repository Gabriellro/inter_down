import 'package:flutter/material.dart';
import 'package:inter_down/screens/profile/components/header.dart';

import 'package:inter_down/screens/profile/components/profile.dart';
import 'package:inter_down/style_guide.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            SizedBox(height: (5)),
            Header(),
            SizedBox(height: (94)),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 840,
                  decoration: BoxDecoration(
                    color: azulClaro,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                ),
                Positioned(
                  top: -50,
                  left: (36),
                  child: Profile(),
                ),
                Column(
                  children: [
                    SizedBox(height: (80)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Text(
                        "O aplicativo InterDown versão 1.0 é resultado de um projeto multidisciplinar com professores pesquisadores e alunos das áreas de Fisoterapia, Sistema de Informação da UNA Contagem, Belo Horizonte e Betim. O objetivo de aplicativo é possibilitar uma ferramenta de auxilio para proficnais da reabilitação infantil que assistem crianças com diagionostico de Autismo com infomações e prescreverem brincadeiras com finalidade terapeutica para serem realizadas em domiciloiou ambientes de lazer",
                        style: kStyleTitle.copyWith(color: branco),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    SizedBox(height: (15)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            child: Expanded(
                              flex: 2,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Profesores",
                                      style:
                                          kStyleTitle2.copyWith(color: branco)),
                                  Text(
                                    "professor1",
                                    style: kStyleTitle.copyWith(
                                      color: branco.withOpacity(0.5),
                                    ),
                                  ),
                                  Text(
                                    "professor2",
                                    style: kStyleTitle.copyWith(
                                      color: branco.withOpacity(0.5),
                                    ),
                                  ),
                                  Text(
                                    "professor3",
                                    style: kStyleTitle.copyWith(
                                      color: branco.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 200,
                            child: Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Alunos",
                                      style:
                                          kStyleTitle2.copyWith(color: branco)),
                                  Text(
                                    "Alunos1",
                                    style: kStyleTitle.copyWith(
                                      color: branco.withOpacity(0.5),
                                    ),
                                  ),
                                  Text(
                                    "Alunos2",
                                    style: kStyleTitle.copyWith(
                                      color: branco.withOpacity(0.5),
                                    ),
                                  ),
                                  Text(
                                    "Alunos3",
                                    style: kStyleTitle.copyWith(
                                      color: branco.withOpacity(0.5),
                                    ),
                                  ),
                                  Text(
                                    "Alunos4",
                                    style: kStyleTitle.copyWith(
                                      color: branco.withOpacity(0.5),
                                    ),
                                  ),
                                  Text(
                                    "Alunos5",
                                    style: kStyleTitle.copyWith(
                                      color: branco.withOpacity(0.5),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Spacer()
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
