import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Cliente extends StatefulWidget {
  const Cliente({super.key});

  @override
  State<Cliente> createState() => _ClienteState();
}

class _ClienteState extends State<Cliente> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cliente"),),
      body:Column(children: [
        Row(children: [
          Image.asset("images/detalhe_cliente.png"),
          Text("Clientes")
        ],),
        Padding(
          padding: EdgeInsets.only(top:16),
          child:Image.asset("images/cliente1.png")
        ),
        Padding(
          padding: EdgeInsets.only(top:16),
          child:Image.asset("images/cliente2.png")
        )
      ],)
    );
  }
}