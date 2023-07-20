import 'package:flutter/material.dart';
import 'package:quizz/final.dart';
import 'package:quizz/quiz.dart';
import 'main.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0XFFE7D7FF),
        fontFamily: 'Slabo',
      ),
      home: Scaffold(
        
        //appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   title: Center(child: Text('')),
      // ),
      body:
      
       Container(
         decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/fundo.jpeg'),
            fit: BoxFit.cover,
             // Opcional: ajusta a imagem para cobrir todo o contêiner
          ),
        ),
         child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Transform.translate(
                  offset: Offset(5,70),
                    child:Image.asset('assets/images/icon.png', width: 200,),
                  ),
                Transform.translate(
                  offset: Offset(0,20),
                    child: Text('HARRY POTTER', style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      
                        shadows: [
                          Shadow(
                            offset: Offset(2.0, 2.0), // Deslocamento da sombra em relação ao texto (horizontal, vertical)
                            blurRadius: 2.0, // Raio do desfoque da sombra
                            color: Colors.black, // Cor da sombra
                          ),
                        ]
                      ),
                      )
                  ),
                   Transform.translate(
                  offset: Offset(0,-35),
                    child: Text('  QUIZZ  ', style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                       shadows: [
                          Shadow(
                            offset: Offset(2.0, 2.0), // Deslocamento da sombra em relação ao texto (horizontal, vertical)
                            blurRadius: 2.0, // Raio do desfoque da sombra
                            color: Colors.black, // Cor da sombra
                          ),
                        ]
                      ),)
                  ),
                 
             
                Transform.translate(
                  offset: Offset(0,-80),
                  child: SizedBox(//widget q limita tamanho do child
                    width: double.infinity,
                    child: ElevatedButton(//aparencia de elevaçao quando é precionado
                      style: ElevatedButton.styleFrom(
                        shadowColor: Color.fromARGB(0, 0, 0, 0),
                         backgroundColor: Color.fromARGB(168, 4, 19, 94),
                        padding: EdgeInsets.fromLTRB(40,20,40,20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      )
                      ),
                      child:Text('Jogar', style: TextStyle(
                        fontSize: 35,
                         shadows: [
                          Shadow(
                            offset: Offset(2.0, 2.0), // Deslocamento da sombra em relação ao texto (horizontal, vertical)
                            blurRadius: 2.0, // Raio do desfoque da sombra
                            color: Colors.black, // Cor da sombra
                          ),
                        ]
                      
                      )),
                      
                      onPressed: () {
                        Navigator.pushNamed(context, '/quiz');
                      }),
                  ),
                )
              ],
            ),
          ),
             ),
       ),
      ),
    );
  }
}