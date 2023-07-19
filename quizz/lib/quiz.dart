import 'package:flutter/material.dart';
import 'final.dart';
import 'main.dart';
import 'home_page.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

 static const routeName = '/quiz';

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  int perguntaN = 1;
  int acertos = 0;
  int erros = 0;
  @override
  Widget build(BuildContext context) {
// final List? quiz;

    //lista = base de dados para o quiz
//quiz variavel do tipo lista
    List quiz = [
      //dentro da lista
      //dentro tem um map com perg e resp
      //dentro das respostas tem uma list de alternativas
      {
        //key      valor
        "pergunta":
            "Qual a poção que faz quem toma-la revelar seus maiores segredos?",
        "respostas": [
          "Elixir", //1
          "Polissuco", //2
          "Amortentia", //3
          "Veritaserum" //4
        ],
        "alternativa_correta": 4,
      },
    ];
    quiz.add({
      //key      valor
      "pergunta":
          "Qual a criatura que só pode ser visto por quem testemunhou a morte através dos próprios olhos?",
      "respostas": [
        "Testrálio", //1
        "Unicórnio", //2
        "Dragão", //3
        "Sereia" //4
      ],
      "alternativa_correta": 1,
    });
    quiz.add({
      //key      valor
      "pergunta":
          "Qual é a posição que Harry Potter joga no time de quadribol da Grifinória?",
      "respostas": [
        "Batedor", //1
        "Goleiro", //2
        "Apanhador", //3
        "Artilheiro" //4
      ],
      "alternativa_correta": 3,
    });
      quiz.add({
      //key      valor
      "pergunta":
          "Qual é o nome do animal de estimação de Rubeus Hagrid?",
      "respostas": [
        "Bichento", //1
        "Bicuço", //2
        "Norberto", //3
        "Edwiges" //4
      ],
      "alternativa_correta": 2,
    });
      quiz.add({
      //key      valor
      "pergunta":
          "Qual é o feitiço usado para repelir os Dementadores?",
      "respostas": [
        "Expelliarmus", //1
        "Wingardium Leviosa", //2
        "Expecto Patronum", //3
        "Avada Kedavra" //4
      ],
      "alternativa_correta": 3,
    });
    quiz.add({
      //key      valor
      "pergunta":
          "Qual é a melhor casa de Hogwarts?",
      "respostas": [
        "Grifinória", //1
        "Lufa-Lufa", //2
        "Corvinal", //3
        "Sonserina" //4
      ],
      "alternativa_correta": 4,
    });//7
     quiz.add({
      //key      valor
      "pergunta":
          "Qual é o nome completo do personagem principal, Harry Potter?",
      "respostas": [
        "Harry James Potter", //1
        "Harry Alvo Potter", //2
        "Harry Tiago Potter", //3
        "Harry Severo Potter" //4
      ],
      "alternativa_correta": 1,
    });
     quiz.add({
      //key      valor
      "pergunta":
          "Qual vilarejo os alunos de Hogwarts visitam no terceiro filme?",
      "respostas": [
        "Beco Diagonal", //1
        "Hogsmeade", //2
        "Godric's Hollow", //3
        "Londres" //4
      ],
      "alternativa_correta": 2,
    });
     quiz.add({
      //key      valor
      "pergunta":
          "Qual o nome do mapa usado por Harry no terceiro filme, dado pelos irmãos Wesley?",
      "respostas": [
        "Mapa Invisívrl", //1
        "Mapa da Lua", //2
        "Mapa Mágico", //3
        "Mapa do Maroto" //4
      ],
      "alternativa_correta": 4,
    });
     quiz.add({
      //key      valor
      "pergunta":
          "Qual desses não eram uma das 7 Horcruxes de Voldemort?",
      "respostas": [
        "Diário de Tom Riddle", //1
        "Anel de Marvolo Gaunt", //2
        "Cobra Nagini", //3
        "Varinha das varinhas" //4
      ],
      "alternativa_correta": 4,
    });

    void respondeu(int respostaN) {
      setState(() {
        if (quiz[perguntaN - 1]['alternativa_correta'] == respostaN) {
          print('acertou');
          acertos++;
        } else {
          print('errou');
          erros++;
        }
        print('acetos $acertos, erros $erros');
        if (perguntaN == 10) {
          print('quizz terminado');
          Navigator.pushNamed(context, '/final',
              arguments: Arguments(acertos));
        } else {
          perguntaN++;
        }
      });
    }

    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0XFFE7D7FF),
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
              Align(
                  //  alignment: Alignment.topLeft,
                  child: Text(
                'Pergunta : ' + quiz[perguntaN - 1]['pergunta'],
                style: TextStyle(fontSize: 20),
              )),
              //para padronizar os botoes em tam da tela ate a margen
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 88, 24, 167),
                    padding: EdgeInsets.fromLTRB(120, 20, 120, 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {
                    respondeu(1);
                  },
                  child: Text(
                    quiz[perguntaN - 1]['respostas'][0],
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 88, 24, 167),
                      padding: EdgeInsets.fromLTRB(120, 20, 120, 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      respondeu(2);
                    },
                    child: Text(
                      quiz[perguntaN - 1]['respostas'][1],
                      style: TextStyle(fontSize: 20),
                    )),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 88, 24, 167),
                      padding: EdgeInsets.fromLTRB(120, 20, 120, 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      respondeu(3);
                    },
                    child: Text(
                      quiz[perguntaN - 1]['respostas'][2],
                      style: TextStyle(fontSize: 20),
                    )),
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 88, 24, 167),
                      padding: EdgeInsets.fromLTRB(120, 20, 120, 20),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    onPressed: () {
                      respondeu(4);
                    },
                    child: Text(
                      quiz[perguntaN - 1]['respostas'][3],
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
