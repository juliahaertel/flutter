import 'package:flutter/material.dart';

class Contador with ChangeNotifier{//valores que serão armazenados

  int valor = 0;

  void aumentar(){
    valor++;
    notifyListeners();
  }

}