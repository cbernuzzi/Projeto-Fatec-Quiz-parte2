import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'cadastro.dart';
import 'login.dart';

void main() {
  runApp(MyApp());
}

class LogoWidget extends StatelessWidget{
  final String foto;

  LogoWidget(this.foto): super();

  @override
  Widget build(BuildContext context){
    return new Center(
      child: 
      Column(children: <Widget>[
        Image.asset(foto),
      ]),
      );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
        
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

   _navigateCadastro(BuildContext context) async {
    
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => CadastroPage()),
    );
  }
  
  _navigatelogin(BuildContext context) async {
    
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => LoginPage()),
    );
  }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: NetworkImage('https://curitibadegraca.com.br/wp-content/uploads/2020/04/quiz.jpg'),
               width: 200,
              )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:RaisedButton(
                onPressed: (){
                    _navigateCadastro(context);

                },
                child: Text("Cadastro")
                )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:RaisedButton(
                onPressed: (){
                    _navigatelogin(context);
                },
                child: Text("login")
                )
            )
          ]
        )
      ),
    );
  }
}
