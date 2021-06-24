class PostModel {
  int index;
  final String titulo, resume, date, bg;

  PostModel({
    required this.index,
    required this.titulo,
    required this.resume,
    required this.date,
    required this.bg,
  });
}

List<PostModel> destaqueslist = [
  PostModel(
    index: 0,
    bg: "http://www.incluo.com.br/blog/wp-content/uploads/2017/10/pcd-1.png",
    date: "11/10/2017",
    resume:
        "No Brasil, a isenção de impostos para aquisição de carros para pessoas com deficiências físicas ou mentais, já é lei há mais de 20 anos. No entanto, no primeiro trimestre desse ano algumas regras foram revistas, o que tem gerado muitas dúvidas na hora da compra.",
    titulo:
        "Carro com isenção de impostos para pessoas com deficiência: como funciona?",
  ),
  PostModel(
    index: 1,
    bg: "http://www.incluo.com.br/blog/wp-content/uploads/2017/09/ALICE-MANA.jpg",
    date: "07/09/2017",
    resume:
        "Esta é uma carta especialmente dirigida a você, querido irmão/ irmã, que está esperando o seu irmão com Síndrome de Down. Devo confessar que, desde os meus primeiros anos de infância, sou apaixonada por escrever, sobre histórias verdadeiras, aquelas que não são esquecidas.",
    titulo:
        "CARTA PARA VOCE, FUTURO IRMÃO ( IRMÃ) DE UMA PESSOA COM SÍNDROME DE DOWN",
  ),
  PostModel(
    index: 2,
    bg: "http://www.incluo.com.br/blog/wp-content/uploads/2016/07/ap1.jpg",
    date: "07/09/2017",
    resume:
        "Muitos me perguntam sobre a diferença entre educação especial e inclusiva. A principal diferença que vejo está relacionada à compreensão errônea de que um aluno com necessidades educacionais especiais (NEEs) é especial. Ser especial é ótimo! Ou pelo menos deveria ser. O que me incomoda é perceber que a denominação “especial”, neste contexto, está mais relacionada à percepção de incapacidade.",
    titulo: "Enxergar as Potencialidades para uma efetiva educação Inclusiva.",
  ),
  PostModel(
    index: 3,
    bg: "http://www.incluo.com.br/blog/wp-content/uploads/2017/08/inclusao_social_incluo-1.jpg",
    date: "15/08/2017",
    resume:
        "Inclusão Social. Diversidade. Responsabilidade Social. As palavras viraram senso comum nos materiais de comunicação das empresas em todo o mundo. Resta saber, no entanto, se realmente foram incorporadas na cultura, nos valores e nas práticas das corporações.",
    titulo:
        "Inclusão social na prática: atuação das empresas brasileiras e entrevista com a Anglo American Brasil",
  ),
  PostModel(
    index: 4,
    bg: "http://www.incluo.com.br/blog/wp-content/uploads/2017/08/gabriel-e-Dudu.jpg",
    date: "13/08/2017",
    resume:
        "Gabriel é como diz em minas um cara bacana demais! Sempre que vamos em São Paulo, especialmente na casa fantástica do Projeto De Lá Pra Cá fazemos questão de encontrá-lo.  Nossas conversas são sempre agradáveis e repleta de aprendizados.",
    titulo: "Convivendo com a diversidade: porque é importante?",
  ),
  PostModel(
    index: 5,
    bg: "http://www.incluo.com.br/blog/wp-content/uploads/2017/07/convivendo-com-a-diversidade-porque-e-importante.jpeg",
    date: "04/07/2017",
    resume:
        "Aprender a viver em um ambiente de diversidade é um dos principais desafios contemporâneos.",
    titulo: "Histórias que marcam: Conheça a trajetória do Gabriel",
  ),
  PostModel(
    index: 6,
    bg: "http://www.incluo.com.br/blog/wp-content/uploads/2017/06/LBI222.jpg",
    date: "27/06/2017",
    resume:
        "Hoje dividimos com nossos leitores o programa Hipótese gravado pela TV Puc.",
    titulo: "Lei Brasilieira de inclusão- Informações Importantes",
  ),
  PostModel(
    index: 7,
    bg: "http://www.incluo.com.br/blog/wp-content/uploads/2017/06/noemi.jpg",
    date: "26/06/2017",
    resume:
        "Tivemos a honra de conhecer o ambulatório sobre a síndrome de down da UFPR ( leia mais sobre abaixo) . Trabalho maravilhoso que todos precisam conhecer.",
    titulo:
        "BATE PAPO NOEMIA CAVALHEIRO- IDEALIZADORA DO AMBULATÓRIO DA SÍNDROME DE DOWN E DA ASSOCIAÇÃO REVIVER DOWN",
  ),
];
