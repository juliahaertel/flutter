import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './models/contador.dart';

//estado de aplicativo

class SetStateAplicativPage extends StatelessWidget{
  const SetStateAplicativPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Set State Page')
      ),
      body: Container(
        child: Column(
          children: [
            const Text('Contagem:'),
            Consumer<Contador>(
              builder: (context, contador, child) => Text(
                contador.valor.toString()
              )
            ),
            ElevatedButton(
              child: const Text('Aumentar'),
              onPressed: (){
                  Provider.of<Contador>(context, listen: false).aumentar();
              }
            ),
            ElevatedButton(
              child: const Text('ver'),
              onPressed: (){
                  Navigator.pushNamed(context, '/consultaPage');
              }
            )
          ],
        ),
      )
    );
  }
}