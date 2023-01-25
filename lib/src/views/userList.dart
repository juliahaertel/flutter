import 'package:flutter/material.dart';
import 'package:flutter_project/src/models/user.dart';
import 'package:flutter_project/src/provider/users.dart';
import 'package:flutter_project/src/widget/userTile.dart';
import 'package:provider/provider.dart';

class UserList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context, /*listen: false*/);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de usuários'),
        actions: [
          IconButton(onPressed: (){
           Navigator.pushNamed(context, '/formPage');
          }, icon: const Icon(Icons.add))
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
        ),
    );
  }
}