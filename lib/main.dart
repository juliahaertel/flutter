import 'package:flutter/material.dart';
import 'package:flutter_project/src/models/contador.dart';
import 'package:flutter_project/src/models/pega_nome.dart';
import 'package:flutter_project/src/provider/users.dart';
import 'package:flutter_project/src/routes/app_routes.dart';
import 'src/views/user_list.dart';
import 'src/set_state_aplicativ.dart';
import 'package:provider/provider.dart';
import 'src/models/contador.dart';
import 'src/help.dart';
import 'src/set_state_local.dart';
import 'src/home.dart';
import 'src/consulta.dart';
import 'src/form.dart';
import 'src/imagem.dart';
import 'src/requisicoes.dart';

//void main() => runApp( const MyApp());
void main() => runApp(
  /*ChangeNotifierProvider(
    create: (context) => Contador(),
    child: const MyApp()
  )*/
  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context)=>Contador()),
      ChangeNotifierProvider(create: (context)=>PegaNome()),
      ChangeNotifierProvider(create: (context)=>Users())
    ],
    child: const MyApp(),
  )
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context){
    return MaterialApp(
      routes: {
        '/home': (context) => const HomePage(),
        '/help': (context) => const HelpPage(),
        '/setStateLocalPage': (context) => const SetStateLocalPage(),
        '/setStateAplicativPage': (context) => const SetStateAplicativPage(),
        '/consultaPage': (context) => const ConsultaPage(),
        '/formPage': (context) =>const FormPage(),
        '/imagePage': (context) => const ImagemPage(),
        '/userList': (context) =>  const UserList(),
        '/requisPage': (context) => const RequisPage(),
        // ignore: equal_keys_in_map
        AppRoutes.FORMULARIO: (_) => const FormPage(),
      },
      initialRoute: '/home',
    );
  }
}