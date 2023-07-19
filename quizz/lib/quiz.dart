import 'package:flutter/material.dart';
import 'final.dart';
import 'main.dart';
import 'home_page.dart';
import 'dados.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

 static const routeName = '/quiz';

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int perguntaN = 0;//identifica a pergunta
  int acertos = 0;//conta acertos
  int erros = 0;//conta erros


  @override
  Widget build(BuildContext context) {


    quiz.shuffle();//embaralha elementos da lista

//embaralha as respostas de cada pergunta

//percorre cada elemento do quiz
  quiz.forEach((element) {
    //quarda o index da alternativa correta do elemento
    int altCorreta = element['alternativa_correta'];

    //lista de respostas do elemento
    List respostas = element['respostas'];
    //quarda a string da resposta correta usando o index da alternativa correta
    String respcorreta = element['respostas'][altCorreta-1];


    //embaralha respostas
    respostas.shuffle();
    int i=1;
    //percore respostas
      respostas.forEach((element) {
        //se a resposta for igual a alternativa correta
        if(element==respcorreta){
          //alternativa correta recebe o index da resposta
          altCorreta = i;
        }
        //incrementa o i
        i++;
      }
      );

       element['alternativa_correta'] = altCorreta;
  });


//funçao que realiza a logica, recebe o identificador da resposta
//
    void respondeu(int respostaN) {
      //seta o state
      setState(() {
  // pega a pergunta do quiz, se o numero da resposta for igual a resp correta
        if (quiz[perguntaN]['alternativa_correta'] == respostaN) {
          print('acertou');
          acertos++;
        } else {
          print('errou');
          erros++;
        }
        print('acetos $acertos, erros $erros');
        if (perguntaN == 9) {
          print('quizz terminado');
          Navigator.pushNamed(context, '/final',
              arguments: Arguments(acertos));//manda os acertos por parametro
        } else {
          perguntaN++;//icrementa pra mudar a pergunta
        }
      });
    }

    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0XFFE7D7FF),
        fontFamily: 'Slabo',
      ),
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(255, 88, 24, 167),
            title: Align(
              alignment: Alignment.topRight,
              child: Text(
                '$perguntaN /10',
                style: TextStyle(fontSize: 20),
              ),
            )),
        body: Padding(
          //colocar borda em todo app
          padding: const EdgeInsets.all(20.0),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
                   Container(
                    width:300,
                     child: Text(
                                   '  ' + quiz[perguntaN]['pergunta'],
                                   style: TextStyle(fontSize: 20),
                                   textAlign: TextAlign.center,
                                 ),
                   ),
              //para padronizar os botoes em tam da tela ate a margen
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 88, 24, 167),
                    padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    respondeu(1);
                  },
                  child: Text(
                    quiz[perguntaN]['respostas'][0],
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 88, 24, 167),
                      padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      respondeu(2);
                    },
                    child: Text(
                      quiz[perguntaN]['respostas'][1],
                      style: TextStyle(fontSize: 20),
                    )),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 88, 24, 167),
                      padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      respondeu(3);
                    },
                    child: Text(
                      quiz[perguntaN]['respostas'][2],
                      style: TextStyle(fontSize: 20),
                    )),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 88, 24, 167),
                      padding: EdgeInsets.fromLTRB(40, 20, 40, 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      respondeu(4);
                    },
                    child: Text(
                      quiz[perguntaN]['respostas'][3],
                      style: TextStyle(fontSize: 20),
                    )),
              ),
            ],
          )),
        ),
      ),
    );
  }
}
