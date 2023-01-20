import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FormularioPage extends StatefulWidget{
  const FormularioPage({Key? key}) : super(key: key);


  @override
  _Formulario createState() => _Formulario();
}
  class _Formulario extends State<FormularioPage>{
    final _formkey = GlobalKey<FormState>();

    String email = '';
    String nome  = '';
    //String senha = '';
    
  @override
  Widget build(BuildContext context){
    return Form(
      key: _formkey,
      child:Column(
        children: [
          //const SizedBox(height:50),
          const Padding(padding: EdgeInsets.only(top: 10.0)),
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
            onSaved: (txt){
              setState(() {
                nome = txt!;
              });
            },
          ),
          const Padding(padding: EdgeInsets.only(top: 25.0)),
          TextFormField(
            decoration: const InputDecoration(
              hintText: 'Digite seu email:'
            ),
            validator: (value){
              if(value!.isEmpty){
                return 'Informe o email!';
              }else{
                null;
              }
            },
            onSaved: (txt){
              setState(() {
                email = txt!;
              });
            },
          ),
          const Padding(padding: EdgeInsets.only(top: 25.0)),
          TextFormField(
            obscureText: true,
            decoration: const InputDecoration(
              hintText: 'Digite sua senha:'
            ),
            validator: (value){
              if(value!.isEmpty){
                return 'Informe a senha!';
              }else if(value.length < 8){
                return 'Informe uma senha com no minimo 8 digitos.';
              }else{
                null;
              }
            },
          ),
          const Padding(padding: EdgeInsets.only(top: 10.0)),
          ElevatedButton(
            child: const Text('Enviar'),
            onPressed: (){
              if(_formkey.currentState!.validate()){
                _formkey.currentState!.save();
                print("validadooow");
              }
            },
          ),
          const Padding(padding: EdgeInsets.only(top: 70.0)),
          Container(
            //color: Colors.lightBlue,
            height: 70,
            //width: 100000,
            child: Row(
              children: [
                Expanded(child: ElevatedButton(
                  onPressed: (){}, 
                  child: Text('Usuario registrado: \nNome $nome e Email $email'),
                  )
                )
              ],
            )
          )
        ],
      ),
    );
  }
  }


