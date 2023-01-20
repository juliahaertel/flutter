import 'package:flutter/material.dart';

class FormularioPage extends StatefulWidget{
  const FormularioPage({Key? key}) : super(key: key);


  @override
  _Formulario createState() => _Formulario();
}
  class _Formulario extends State<FormularioPage>{
    final _formkey = GlobalKey<FormState>();
    
  @override
  Widget build(BuildContext context){
    return Form(
      key: _formkey,
      child:Column(
        children: [
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Digite seu nome:'
            ),
            validator: (value){
              if(value!.isEmpty){
                return 'Informe o nome!';
              }else{
                null;
              }
            },
          ),
          ElevatedButton(
            child: const Text('Enviar'),
            onPressed: (){
              if(_formkey.currentState!.validate()){
                print("validadooow");
              }
            },
          )
        ],
      ),
    );
  }
  }


