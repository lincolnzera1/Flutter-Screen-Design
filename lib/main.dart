import 'package:dibble_tela_1/pages/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MeuAplicativo());
}


class MeuAplicativo extends StatelessWidget {
  const MeuAplicativo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Dribble(),
      debugShowCheckedModeBanner: false,
    );
  }
}