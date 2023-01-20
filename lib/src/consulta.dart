import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './models/contador.dart';

class ConsultaPage extends StatelessWidget{
  const ConsultaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('a'),
      ),
      body: Center(
        child: Consumer<Contador>(
          builder:(context, contador, child) => Text(
            'Contagem: ${contador.valor}'
          )
          )
        )
    );
  }
}