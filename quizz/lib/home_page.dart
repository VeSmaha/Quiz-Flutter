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
              Transform.translate(
                offset: Offset(5,70),
                  child: 
                  // FlutterLogo
                    Image.asset(
                      'assets/images/logo.png',
                     height: 325,
                      // size:300,
                      
                    ),
                  ),
      
              Transform.translate(
                offset: Offset(0,-100),
                child: SizedBox(//widget q limita tamanho do child
                  width: double.infinity,
                  child: ElevatedButton(//aparencia de elevaçao quando é precionado
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 88, 24, 167),
                      padding: EdgeInsets.fromLTRB(40,20,40,20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                    ),
                    child:Text('Jogar', style: TextStyle(
                      fontSize: 30
                    ),),
                    
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
    );
  }
}