import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Servico extends StatefulWidget {
  const Servico({super.key});

  @override
  State<Servico> createState() => _ServicoState();
}

class _ServicoState extends State<Servico> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Servico"),),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        Row(children: [
          Image.asset("images/detalhe_servico.png"),
          Text("Serviços")
        ],),
        const Padding(
          padding: EdgeInsets.only(left:10),
          child:Text("Nossos Serviços",
            style:TextStyle(
              fontSize: 20
            )
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(left:10),
          child:Text("consultoria"),
        ),
        const Padding(
          padding: EdgeInsets.only(left:10),
          child:Text("cálculos de preços"),
        ),
        const Padding(
          padding: EdgeInsets.only(left:10),
          child:Text("acompanhamento de projetos"),
        ),
        const Padding(
          padding: EdgeInsets.only(left:10),
          child:Text("serviços de monitoramento de software"),
        ),
      ],),
    );
  }
}