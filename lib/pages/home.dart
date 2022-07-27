import 'package:dibble_tela_1/cores/Cores.dart';
import 'package:dibble_tela_1/pages/mid.dart';
import 'package:flutter/material.dart';

class Dribble extends StatefulWidget {
  const Dribble({ Key? key }) : super(key: key);

  @override
  State<Dribble> createState() => _DribbleState();
}

class _DribbleState extends State<Dribble> {

  


  @override
  Widget build(BuildContext context) {

    var altura =  MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color.fromRGBO(219,233,246,1),
      /* appBar: 
        AppBar(title: const Text("Tava sentindo falta já"),
        centerTitle: true,
      ), */
      body: Stack(
        children: [
          Container(
          padding: EdgeInsets.all(32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.center,
                child: Image.asset("assets/ux-nobk.png", height: 200,)
              ),
              SizedBox(height: altura * 0.22,),
              const Text("Manage your daily tasks", style: azulEscuro,),
              const Padding(padding: EdgeInsets.only(top: 15)),
              const Text("Team and Project management with soluction providing App", style: paragrafo,),
              const Padding(padding: EdgeInsets.only(top: 15)),
              Stack(
                children: [
                  InkWell(
                    onTap: () => {
                      print("uns bug nada a ver")
                    },
                    child: Ink(
                      height: 45,
                      width: 100,
                      color: const Color.fromRGBO(219,233,246,1),
                    ),
                  ),
                  Container(    
                    height: 44,
                    width: 40,
                    decoration: const BoxDecoration(
                      //border: Border.all(color: Colors.red),
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 7,
                          color: Color.fromARGB(255, 167, 165, 165),
                          offset: Offset(0.0, 4),
                          spreadRadius: 0.001,
                        )
                      ]
                    ),
                  ),
                  Column(
                        children: [
                          const Padding(padding: EdgeInsets.only(top: 13)),
                          Row(
                            children: [
                              SizedBox(width: 10,),
                              InkWell(
                                onTap: (){
                                  print("tupac");
                                },
                                child: Ink(
                                  child: Text("Get started", style: getStarted,)
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      GestureDetector(
                        onTap: () => {
                          Navigator.push(
                            context, 
                            MaterialPageRoute(builder: (context) => const Mid())
                          )
                        },
                        child: Container(
                          height: 45,
                          width: 100,
                          color: Color.fromARGB(0, 41, 26, 25),
                        ),
                      ),
                ],
              )
            ],
          ),
        ),
        ]
      )
    );
  }
}