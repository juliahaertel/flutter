import 'package:flutter/material.dart';
import 'package:flutter_project/src/models/user.dart';
import 'package:flutter_project/src/provider/users.dart';
import 'package:flutter_project/src/routes/app_routes.dart';
import 'package:provider/provider.dart';

class UserTile extends StatelessWidget {

  final User user;

  const UserTile(this.user, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: unnecessary_null_comparison
    final avatar = user.avatarUrl == null || user.avatarUrl.isEmpty
      ?const CircleAvatar(child: Icon(Icons.person))
      :CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));
    return ListTile(
      leading: avatar,
      title: Text(user.name),
      subtitle: Text(user.email),
      trailing: SizedBox(
        width: 100,
        child: Row(
        children: [
          IconButton(onPressed: (){
            //Navigator.pushNamed(context, '/formPage');
            Navigator.of(context).pushNamed(
              AppRoutes.FORMULARIO,
              arguments: user,
            );
          }, icon: Icon(Icons.edit, color: Colors.amber[600])),
          IconButton(onPressed: (){
            showDialog(
              context: context, 
              builder: (ctx) =>  AlertDialog(
                title: const Text('Excluir usuário'),
                content: const Text('Tem certeza?'),
                actions: [
                  ElevatedButton(
                    onPressed:(){ 
                      Navigator.pop(context);
                  }, 
                  child: const Text('Não')),
                  ElevatedButton(onPressed: (){
                    Provider.of<Users>(context, listen: false).remove(user);
                    Navigator.pop(context);
                  }, child: const Text('Sim')),
                ],
              ));
    
          }, icon: Icon(Icons.delete, color: Colors.red[600]))
        ],
      )
    )
    );
  }
}