import 'package:flutter/material.dart';
import 'Sobre.dart';

class TelaFinalPage extends StatefulWidget {
  TelaFinalPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _TelaFinalPageState createState() => _TelaFinalPageState();
}

class _TelaFinalPageState extends State<TelaFinalPage> {
  String teste;

    _navigatePerguntaFinal(BuildContext context) async {
    
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => SobrePage()),
    );
  }

  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PARABÉNS!"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                Text("Você chegou ao Final de nosso Desafio!", style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,    
                  fontStyle: FontStyle.italic,      
                  fontWeight: FontWeight.bold,
                )
    )
            ),
            
            Row(children: <Widget>[
              
              new Container(
                alignment: Alignment.centerRight,
                margin: new EdgeInsets.only(top: 20.0, left: 210.0),
                child: RaisedButton(
                  onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => SobrePage()
                       ));
                  },
                  child: Text("Sobre o APP"),
                ),
              )
            ],)
            
          ],
        )
      ),
    );
  }

}