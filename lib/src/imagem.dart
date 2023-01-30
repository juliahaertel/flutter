import 'package:flutter/material.dart';

class ImagemPage extends StatelessWidget{
  const ImagemPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Teste de imagem'),
      ),
      body: Column(
        children:[
          const Image(image: AssetImage('assets/foto.png')),
          Container(
            //color: Colors.amber,
            padding: const EdgeInsets.all(20),//espaço nas bordas
            child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,//colocar textos para esquerda
                  children: const[
                    Text('Mundo Minecraft',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    Text('Mapa inicial de oneblock.',
                    style: TextStyle(fontSize:16, color: Colors.grey))
                  ],
                 )
                ),
                Row(
                  children: const [
                   Icon(Icons.star, color: Colors.amber),
                   Text('9.762')
                  ],)
              ],
            )
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Expanded(
                      child:Botao(
                        icon: Icons.call,
                        text: 'Ligar',
                        onPress:(){
                        //  print('1');
                        })
                      ),
                      Expanded(
                        child: Botao(
                          icon: Icons.link,
                          text: 'Link',
                          onPress:(){
                          //  print('2');
                          }
                        )
                      ),
                      Expanded(
                        child: Botao(
                          icon: Icons.add_alert_outlined,
                          text: 'Notificação',
                          onPress:(){
                          //  print('3');
                          }
                        )
                      )
                  ],
                ),                                
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: const Text('Texto de teste, texto de teste,texto de teste,texto de teste,texto de teste,texto de teste,texto de teste,texto de teste,texto de teste.\nTexto de teste, texto de teste,texto de teste,texto de teste,texto de teste.'),
          )
        ]
      )
    );
  }
}


class Botao extends StatelessWidget{
 // const Botao({Key? key, IconData? icon, required String text, Null Function() onPress}) : super(key: key);

  const Botao({Key? key, 
    this.onPress,
    required this.icon,
    required this.text
  }) : super(key: key);

 final Function()? onPress;
 final IconData icon;
 final String text;
  
  
  @override
  Widget build(BuildContext context){
     return 
      OutlinedButton(
        onPressed: onPress,
        child: Column(
          children:<Widget> [
            Icon(icon, color: Colors.blue),
            Text(text)
          ]
        )  
    );
  }
}
