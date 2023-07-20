import 'package:flutter/material.dart';
import 'main.dart';
import 'home_page.dart';
import 'quiz.dart';

class Arguments {
  int acertos = 0;
  Arguments(this.acertos);
}

class Final extends StatelessWidget {
  const Final({Key? key}) : super(key: key);

  static const routeName = '/final';

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments as Arguments;
    final acertos = arguments.acertos;
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
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/fundo.jpeg'),
                fit: BoxFit
                    .cover, // Opcional: ajusta a imagem para cobrir todo o contêiner
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                     Container(
                    width: 300,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Color.fromARGB(168, 4, 19, 94),
                    ),
                     ),
                    Text('Resultado:', style: TextStyle(fontSize: 25, color: Colors.white,
                     shadows: [
                          Shadow(
                            offset: Offset(2.0, 2.0), // Deslocamento da sombra em relação ao texto (horizontal, vertical)
                            blurRadius: 2.0, // Raio do desfoque da sombra
                            color: Colors.black, // Cor da sombra
                          ),
                        ])
                    ),
                   
                    Transform.translate(
                      offset: Offset(5,200),
                    child: Text('Você acertou $acertos de 10 perguntas',
                          style: TextStyle(fontSize: 25, color: Colors.white,
                           shadows: [
                          Shadow(
                            offset: Offset(4.0, 2.0), // Deslocamento da sombra em relação ao texto (horizontal, vertical)
                            blurRadius: 2.0, // Raio do desfoque da sombra
                            color: Colors.black, // Cor da sombra
                          ),
                        ])
                    )
                    ),
                
                     Transform.translate(
                      offset: Offset(5,-130),
                        child:Image.asset('assets/images/icon.png', width: 200,),
                  ),
                    Transform.translate(
                      offset: Offset(0, -100),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              shadowColor: Color.fromARGB(0, 0, 0, 0),
                                backgroundColor: Color.fromARGB(168, 4, 19, 94),
                                padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                )),
                            child: Text(
                              'Jogar',
                              style: TextStyle(fontSize: 30,
                               shadows: [
                          Shadow(
                            offset: Offset(2.0, 2.0), // Deslocamento da sombra em relação ao texto (horizontal, vertical)
                            blurRadius: 2.0, // Raio do desfoque da sombra
                            color: Colors.black, // Cor da sombra
                          ),
                        ])
                          
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Quiz()),
                              );
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
