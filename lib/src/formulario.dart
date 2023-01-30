//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/src/models/user.dart';
import 'package:flutter_project/src/provider/users.dart';
import 'package:provider/provider.dart';
import 'package:email_validator/email_validator.dart';


class FormularioPage extends StatefulWidget{  
  const FormularioPage({Key? key}) : super(key: key);


  @override
  _Formulario createState() => _Formulario();
}
  class _Formulario extends State<FormularioPage>{
    final _formkey = GlobalKey<FormState>();
    final Map<String, String> _formData = {};

    /*String email = '';
    String nome  = '';
    String senha = '';*/
    
    void _loadFormData(User? user){
      if(user != null){
      _formData['id'] = user.id!;
      _formData['name'] = user.name;
      _formData['email'] = user.email;
      _formData['avatarUrl'] = user.avatarUrl;
      } 
    }
    
  @override
  Widget build(BuildContext context){

    User? user = ModalRoute.of(context)?.settings.arguments as User?;
    _loadFormData(user);
    //print(user?.name);
    


    return Form(
      key: _formkey,
      child:Column(
        children: [
          //const SizedBox(height:50),

          const Padding(padding: EdgeInsets.only(top: 10.0)),
          TextFormField(
            initialValue: _formData['name'],
            decoration: const InputDecoration(
              hintText: 'Nome:'
            ),
            validator: (value){
              if(value!.isEmpty){
                return 'Informe o nome!';
              }else{
                null;
              }
            },
            /*onSaved: (txt){
              setState(() {
                nome = txt!;
              });
            },*/
            onSaved: (value) => _formData['name'] = value!,
          ),

          const Padding(padding: EdgeInsets.only(top: 25.0)),
          TextFormField(
            initialValue: _formData['email'],
            decoration: const InputDecoration(
              hintText: 'Email:'
            ),
            validator: (value){
              if(value!.isEmpty){
                return 'Informe o email!';
              }else if(!EmailValidator.validate(value, true)){
                return 'Email inválido!';
              }else{
                null;
              }
            },
            /*onSaved: (txt){
              setState(() {
                email = txt!;
              });},*/
              
            onSaved: (value) => _formData['email'] = value!,
          ),
          const Padding(padding: EdgeInsets.only(top: 25.0)),
          TextFormField(
            initialValue: _formData['avatarUrl'],
            decoration: const InputDecoration(
              hintText: 'Url avatar:'
            ),
            onSaved: (value) => _formData['avatarUrl'] = value!,
          ),
          
      
          //senha
          /*
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
          ),*/

          const Padding(padding: EdgeInsets.only(top: 10.0)),
          ElevatedButton(
            child: const Text('Salvar Usuário'),
            onPressed: (){
              if(_formkey.currentState!.validate()){
                _formkey.currentState!.save();
                //print("validadooow");

                Provider.of<Users>(context, listen: false).put(User(
                  id: _formData['id'],
                  name: _formData['name']!, 
                  email: _formData['email']!, 
                  avatarUrl: _formData['avatarUrl']!,
                  ),
                  );
                //Navigator.pushNamed(context, '/userList'); //ou  Navigator.pop()
                Navigator.popAndPushNamed(context, '/userList');
              }
            },
          ),

          /*const Padding(padding: EdgeInsets.only(top: 70.0)),
          Container(
            //color: Colors.lightBlue,
            height: 70,
            padding: const EdgeInsets.all(20),
            //width: 100000,
            child: Row(
              children: [
                Text('Usuario registrado: \nNome $nome e Email $email'),
              ],
            )
          )*/

        ],
      ),
    );
  }
  }
