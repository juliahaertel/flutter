import 'package:flutter/material.dart';
import 'src/foto.dart';
import 'package:flutter_project/src/models/pegaNome.dart';
import 'src/setStateAplicativ.dart';
import 'package:provider/provider.dart';
import 'src/models/contador.dart';
import 'src/help.dart';
import 'src/setStateLocal.dart';
import 'src/home.dart';
import 'src/consulta.dart';
import 'src/form.dart';

//void main() => runApp( const MyApp());
void main() => runApp(
  /*ChangeNotifierProvider(
    create: (context) => Contador(),
    child: const MyApp()
  )*/
  MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context)=>Contador(),),
      ChangeNotifierProvider(create: (context)=>PegaNome())
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
        '/fotoPage': (context) => const FotoPage()
      },
      initialRoute: '/home',
    );
  }
}