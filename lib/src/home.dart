import 'package:flutter/material.dart';
import 'package:flutter_project/src/models/pega_nome.dart';
import 'package:provider/provider.dart';
import './help.dart';

class HomePage extends StatelessWidget{
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: ListView(
        children: [ 
          /*
          ListTile(
            leading: Icon(Icons.map),
            trailing: Text('Selecionado'),// || ElevatedButton(onPressed:null, child: Text('Checked')),
            title: Text('Mapa')
          )
          */
          Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              children: [
                 Expanded(
                child: TextField(
                decoration: const InputDecoration(
                  labelText: 'Digite o título:'
                ),
                onChanged: (titulo) {
                  Provider.of<PegaNome>(context,listen: false).mudarNome(titulo);
                  },
              ),
               ) ,           
              ],
            ),
            Row(
            children:[
              Consumer<PegaNome>(
                builder: (context, pegaNome, child) => Text(
                      'O seu titulo é: ${pegaNome.nome}'
                  )
                ),
            ]
            ),
            const Padding(padding: EdgeInsets.only(top: 50.0)),
            Row(
            children: [
              const Icon(Icons.bar_chart),  
              Expanded(              
                child: OutlinedButton(
                child: const Text('Ir para tela dinamica'),
                onPressed: (){
                Navigator.pushNamed(context, '/help', arguments: ScreenArguments( 'voltar'));
                },
              )       
             ) 
            ]
            ), 
            Row(
            children: [  
             const Icon(Icons.coffee, color: Colors.black),  
             Expanded(
              child:  OutlinedButton(
                child: const Text('Ir para tela de contador'),
                onPressed: (){
                Navigator.pushNamed(context, '/setStateLocalPage');
                },
              ),  
             )
            ],
          ),
          Row(
            children: [
              const Icon(Icons.text_snippet_sharp, color: Colors.black),
              Expanded(
                child: OutlinedButton(
                child: const Text('Ir para tela || testando...'),
                onPressed: (){
                Navigator.pushNamed(context, '/setStateAplicativPage');
                },
              ),
            )           
            ],
          ),        
          Row(
            children: [
              const Icon(Icons.account_box, color: Colors.black),
              Expanded(
                child: OutlinedButton(
                  child: const Text('Ir para o formulário'),
                  onPressed: (){
                    Navigator.pushNamed(context, '/formPage');
                  }
                )
              )
            ],
          ),
           Row(
            children: [
              const Icon(Icons.image_sharp, color: Colors.black),
              Expanded(
                child: OutlinedButton(
                  child: const Text('Ir para a página de imagem'),
                  onPressed: (){
                    Navigator.pushNamed(context, '/imagePage');
                  }
                )
              )
            ],
          ),
          Row(
            children: [
              const Icon(Icons.data_usage_rounded, color: Colors.black),
              Expanded(
                child: OutlinedButton(
                  child: const Text('Ir para a lista de usuarios'),
                  onPressed: (){
                    Navigator.pushNamed(context, '/userList');
                  }
                )
              )
            ],
          ),
          Row(
            children: [
              const Icon(Icons.api, color: Colors.black),
              Expanded(
                child: OutlinedButton(
                  child: const Text('Ir para a página de requisições'),
                  onPressed: (){
                    Navigator.pushNamed(context, '/requisPage');
                  },
                ),
              )
            ]
          )
          ]
        )
        ]
      )
    );
  }
}
//lista dinâmica
/*
  var contatos = [
    '1',
    '2',
    '3',
    '4'
  ]

    body:ListView.builder(
      itemCount: contatos.length,
      itemBuilder: (ctx, index){
        return Text('${contatos[index]}');
      }
    )
*/