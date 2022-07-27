import 'package:dibble_tela_1/cores/Cores.dart';
import 'package:dibble_tela_1/cores/estilosMid.dart';
import 'package:flutter/material.dart';

class Mid extends StatefulWidget {
  const Mid({ Key? key }) : super(key: key);

  @override
  State<Mid> createState() => _MidState();
}

class _MidState extends State<Mid> {
  @override
  Widget build(BuildContext context) {

    var altura = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor:  Color.fromARGB(255, 75, 69, 193),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color.fromARGB(255, 75, 69, 193),
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        selectedItemColor: Colors.lightBlueAccent,
        selectedLabelStyle: TextStyle(fontSize: 0),
        unselectedLabelStyle: TextStyle(fontSize: 0),
        elevation: 0.0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon( Icons.home),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: ""
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: "",
          ),
        ]
      ),
      body: Container(
        padding: EdgeInsets.all(32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: altura * 0.12,),
            const Text("Hi Guilherme", style: ghulam,),
            const Text("6 Tasks are pending", style: paragrafoMid,),
            SizedBox(height: altura * 0.05,),
            Container(
              padding: EdgeInsets.all(10),
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 83, 81, 214),
                borderRadius: BorderRadius.all(
                  Radius.circular(15)
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Mobile App Design", style: TextStyle(color: Colors.white, fontSize: 18),),
                  Text("Mike and Anita", style: TextStyle(color: Color.fromARGB(255, 148, 145, 202), fontSize: 10),),
                  Stack(
                    children: [
                      Container(
                        height: 30,
                        width: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                        ),
                      ),
                      Column(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 75)),
                          Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              shape: BoxShape.circle
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: altura * 0.05,),
            Row(
              children: [
                const Text("Monthly Review", style: TextStyle(fontSize: 22, color: Colors.white, fontWeight: FontWeight.bold),),
                Spacer(),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    color: Colors.lightBlueAccent,
                    shape: BoxShape.circle
                    
                  ),
                  child: Icon(Icons.house, color: Colors.white,),
                  
                )
              ],
            ),
            SizedBox(height: altura * 0.05,),
            Row(
              children: [
                Container(
                  height: 110,
                  width: MediaQuery.of(context).size.width * 0.35,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 83, 81, 214),
                    borderRadius: BorderRadius.all(
                      Radius.circular(25)
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("22", style: tamanhoMedio),
                      Text("Done", style: tamanhoMedio),
                    ],
                  ),
                ),
                SizedBox(width: 10,),
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width * 0.35,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 83, 81, 214),
                    borderRadius: BorderRadius.all(
                      Radius.circular(18)
                    )
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("7", style: tamanhoMedio),
                      Text("In progress", style: tamanhoPequeno),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
        
      ),
    );
  }
}