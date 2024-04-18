import 'package:app_atm/views/cliente.dart';
import 'package:app_atm/views/contato.dart';
import 'package:app_atm/views/empresa.dart';
import 'package:app_atm/views/servico.dart';
import 'package:flutter/material.dart';

class HomeAtm extends StatefulWidget {
  const HomeAtm({super.key});

  @override
  State<HomeAtm> createState() => _HomeAtmState();
}

class _HomeAtmState extends State<HomeAtm> {

  void abrirServico(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>Servico())
    );
  }
  void abrirContato(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>Contato())
    );
  }
  void abrirCliente(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=>Cliente())
    );
  }
  void abrirEmpresa(){
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context)=> Empresa())
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Consultoria ATM"),
      ),
      body: Container(
        
        padding:EdgeInsets.all(16),
        child:Column(
          children: [
            Image.asset("images/logo.png"),

            SizedBox(
              height: 64,
            ),

            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
              GestureDetector(child:Image.asset("images/menu_servico.png"),onTap: (){abrirServico();}),
              SizedBox(width: 34,),
              GestureDetector(child:Image.asset("images/menu_empresa.png"),onTap:(){abrirEmpresa();}),
            ],),

            SizedBox(
              height: 34,
            ),

            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
              GestureDetector(child:Image.asset("images/menu_cliente.png"),onTap: (){abrirCliente();},),
              SizedBox(width: 34,),
              GestureDetector(child:Image.asset("images/menu_contato.png"),onTap: (){abrirContato();},)
            ],)
          ],
        ),
      ),
    );
  }
}