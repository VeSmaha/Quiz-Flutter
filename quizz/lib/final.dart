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
      ),
      home: Scaffold(
        //appBar: AppBar(
        //   backgroundColor: Colors.white,
        //   title: Center(child: Text('')),
        // ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('Resultado', style: TextStyle(fontSize: 20)),
                Text('Você acertou $acertos de 10 perguntas',
                    style: TextStyle(fontSize: 20)),
                SizedBox(
                  width: double.infinity,
                  child: Transform.translate(
                    offset: Offset(0, -100),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromARGB(255, 88, 24, 167),
                              padding: EdgeInsets.fromLTRB(100, 20, 100, 20),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              )),
                          child: Text(
                            'Jogar',
                            style: TextStyle(fontSize: 30),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/');
                          },
                        ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
