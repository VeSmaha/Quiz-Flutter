import 'package:flutter/material.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
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
                '1/10',
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
                'Pergunta',
                style: TextStyle(fontSize: 20),
              )),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 88, 24, 167),
                  padding: EdgeInsets.fromLTRB(120, 20, 120, 20),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {},
                child: Text(
                  'Resposta 1',
                  style: TextStyle(fontSize: 20),
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 88, 24, 167),
                    padding: EdgeInsets.fromLTRB(120, 20, 120, 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Resposta 2',
                    style: TextStyle(fontSize: 20),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 88, 24, 167),
                    padding: EdgeInsets.fromLTRB(120, 20, 120, 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Resposta 3',
                    style: TextStyle(fontSize: 20),
                  )),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 88, 24, 167),
                    padding: EdgeInsets.fromLTRB(120, 20, 120, 20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Resposta 4',
                    style: TextStyle(fontSize: 20),
                  )),
            ],
          )),
        ),
      ),
    );
  }
}
