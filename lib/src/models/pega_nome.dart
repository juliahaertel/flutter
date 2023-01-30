import 'package:flutter/material.dart';

class PegaNome with ChangeNotifier{//valores que serão armazenados

  String nome = '';

  void mudarNome(novoNome){
    nome = novoNome;
    notifyListeners();
  }

}