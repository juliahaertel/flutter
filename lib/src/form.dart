import 'package:flutter/material.dart';
import './formulario.dart';

class FormPage extends StatelessWidget{
  const FormPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulário')
      ),
      body: Container(
        padding:const EdgeInsets.all(10),
        child: const FormularioPage(),
      )
    );
  }
  
}