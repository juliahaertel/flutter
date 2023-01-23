import 'package:flutter/material.dart';


class FotoPage extends StatelessWidget{
  const FotoPage({Key? key}) : super(key: key);


callAction(){

  }

  mapAction(){

  }

  shareAction(){

  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Meu primeiro app')
        ),
      body: Column(
        children: <Widget>[
        Image(image: AssetImage('assets/foto.png')),
          //Image.network('https://www.google.com.br/google.jpg'),
          Container(
            //color:Colors.red,
            padding: const EdgeInsets.all(20),//respiro interno
            child:Row(
              children:[
                Expanded(
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,// alinha os itens
                    children:const [
                      Text('Kotel',
                      style:TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color:Colors.black)
                      ),
                      Text('Jerusalem, Israel',
                      style: TextStyle(fontSize:16, color:Colors.grey)
                      )
                    ]
                  )
                ),
                Row(
                  children: const <Widget>[
                    Icon(Icons.star, color:Colors.blue),
                    Text('9.876')
                  ],
                )
              ]
            )
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child:Row(
              children:[
                /*Botao(
                  icon: Icons.call,
                  texto:'Ligar',
                  onPress: callAction
                )*/
                Expanded(
                  child:OutlinedButton(
                    onPressed:(){},
                    child:Column(
                      children:const [
                        Icon(Icons.call, color:Colors.blue),
                        Text('Ligar')
                      ]
                    )
                  )
                ),
               /* Botao(
                  icon:Icons.location_on,
                  texto:'Mapa',
                  onPress: mapAction
                )*/
                Expanded(
                  child:OutlinedButton(
                    onPressed:(){},
                    child:Column(
                      children:const [
                        Icon(Icons.location_on, color:Colors.blue),
                        Text('Mapa')
                      ]
                    )
                  )
                ),
                /*Botao(
                  icon: Icons.share,
                  texto:'Compartilhar',
                  onPress: shareAction
                )*/
                Expanded(
                  child:OutlinedButton(
                    onPressed:(){},
                    child:Column(
                      children:const [
                        Icon(Icons.share, color:Colors.blue),
                        Text('Compartilhar')
                      ]
                    )
                  )
                )
              ]
            )
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child:const Text('Texto texto texto texto texto texto texto texto texto texto textotexto texto.')
          )
        ],
      )
      )
    );
  }
}
/*

class Botao extends StatelessWidget {
  var icon;

  var onPress;

  var texto;


  Botao({required this.onPress,required this.icon,required this.texto });

  @override
  Widget build(BuildContext context){
    return Expanded(
      child:ElevatedButton(
        onPressed: onPress,
        child:Column(
          children: [
            Icon(icon, color:Colors.blue),
            Text(texto)
          ]
        )
      )
    );
  }
}*/


  