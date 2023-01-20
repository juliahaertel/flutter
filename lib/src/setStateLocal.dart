import 'package:flutter/material.dart';

//estado local

class SetStateLocalPage extends StatefulWidget{
  const SetStateLocalPage({Key? key}) : super(key: key);

  @override
  //State<SetStateLocalPage> createState() => SetStateLocalPage();
  _SetStateLocalPage createState() => _SetStateLocalPage();
}

class _SetStateLocalPage extends State<SetStateLocalPage> {
  

  int contagem = 0;
  var fundo = Colors.amber;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Café Page')
      ),
      body:Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(120.0),
        alignment: Alignment.topCenter,
        color: fundo,
        child: Column(
          children: [
            //const Text('Tela que recria a tela padrão de exeplo do flutter, para somar e mostrar na tela de forma local.'),
            const Text('Vezes tomadas café:'),
            Text(contagem.toString()),
            ElevatedButton(
              child: const Text('Aumentar'),
              onPressed: (){
                
                setState(() {
                  contagem++;
                  if (contagem >= 10 && contagem < 20){
                    fundo = Colors.cyan;
                  }else if(contagem >=20 && contagem < 30){
                    fundo = Colors.grey;
                  }else if(contagem >=30 && contagem <40){
                    fundo = Colors.indigo;
                  }else if(contagem >=40 && contagem <50){
                    fundo = Colors.yellow;
                  }else if(contagem >=50){
                    fundo = Colors.brown;
                  }
                });
              },
              ),
          ],
        )
      )
    );
}
}

 /* @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title: const Text(' Set State Local Page')
      ),
        body: 
        const Text('Tela que recria a tela padrão de exeplo do flutter, para somar e mostrar na tela de forma local.')
        );
  }*/

