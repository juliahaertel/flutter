import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';


class Post{
  final int userId;
  final int id;
  final String title;
  final String body;

  Post({required this.userId, required this.id, required this.title, required this.body});

  factory Post.fromJson(Map<String, dynamic> json){
    return Post(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body']
    );
  }
}

Future<Post> pegarPost() async{
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts/1'));

  if(response.statusCode == 200){
      return Post.fromJson(json.decode(response.body));
  }else{
    throw Exception('Falhou a requisição Post');
  }
}


class RequisPage extends StatefulWidget{
  const RequisPage({Key? key}) : super(key: key);


  @override
  _RequisPage createState() => _RequisPage();
}

class _RequisPage extends State<RequisPage>{

  late Future<Post> postagem;

  @override
  void initState(){
    super.initState();

    postagem = pegarPost();
  }
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Página de teste de Requisições'),
      ),
      body: Center(
        child: FutureBuilder<Post>(
          future: postagem,
          builder: (context, snapshot){
            if(snapshot.hasData){
              return Text(snapshot.data!.title);
            }else if(snapshot.hasError){
              return Text(snapshot.error.toString());
            }else{
              return const CircularProgressIndicator();
            }
          },
        ),
      ),
    );
  }
}