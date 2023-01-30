import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/pega_nome.dart';

class ScreenArguments{
  final String message;

  ScreenArguments( this.message);
}

class HelpPage extends StatelessWidget{
  const HelpPage({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context){

    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;
    //final ScreenArguments args = ModalRoute.of(context)!.settings.arguments;
    
    return Scaffold(
      appBar: AppBar(
        title: Consumer<PegaNome>(
          builder: (context, pegaNome, child) => Text(
            pegaNome.nome
          )
        )
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(args.message),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
