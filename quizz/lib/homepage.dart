
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Transform.translate(
              offset: Offset(5,70),
              child: Center(
                child: 
                // FlutterLogo
                  Image.asset(
                    'assets/images/logo.png',
                   height: 325,
                    // size:300,
                    
                  ),
                ),
              ),
            Transform.translate(
              offset: Offset(0,-100),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 88, 24, 167),
                  padding: EdgeInsets.fromLTRB(100,20,100,20),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                )
                ),
                child:Text('Jogar', style: TextStyle(
                  fontSize: 30
                ),),
                
                onPressed: () {
                  
                }),
            )
          ],
        ),
      ),
      ),
    );
  }
}
