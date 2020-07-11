import 'package:flutter/material.dart';
import 'PerguntaFinal.dart';

class Pergunta9Page extends StatefulWidget {
  Pergunta9Page({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Pergunta9PageState createState() => _Pergunta9PageState();
}

class _Pergunta9PageState extends State<Pergunta9Page> {
  String teste;

    _navigatePergunta9(BuildContext context) async {
    
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => PerguntaFinalPage()),
    );
  }

  
  showAlertAcertou(BuildContext context) 
  { 
  
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () { Navigator.pop(context); },
    );
  
    AlertDialog alerta = AlertDialog(
      title: Text("InformaÃ§Ã£o"),
      content: Text("Acertou  + 1 Ponto"),
      actions: [
        okButton,
      ],
    );
    
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alerta;
      },
    );
  }

  showAlertERROU(BuildContext context) 
  { 
  
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () { Navigator.pop(context); },
    );
  
    AlertDialog alerta = AlertDialog(
      title: Text("Alerta de AlteraÃ§Ã£o de Dificuldade"),
      content: Text("Errou sem Pontos"),
      actions: [
        okButton,
      ],
    );
    
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alerta;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pergunta 9"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                Text("Pergunta: Qual o grupo em que todas as palavras foram escritas corretamente?")
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:RaisedButton(
                onPressed: (){
                     showAlertERROU(context);
                },
                child: Text("Asterístico, beneficiente, meteorologia, entertido")
                )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:RaisedButton(
                onPressed: (){
                     showAlertAcertou(context);
                },
                child: Text("Asterisco, beneficente, meteorologia, entretido")
                )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:RaisedButton(
                onPressed: (){
                     showAlertERROU(context);
                },
                child: Text("Asterístico, beneficiente, metereologia, entretido")
                )
            ),
            Row(children: <Widget>[
              // MainAxisAlignment: MainAxisAlignment.spaceBetween,
              new Container(
                alignment: Alignment.centerLeft,
                margin: new EdgeInsets.only(top: 20.0, left: 10.0),
                child: RaisedButton(
                  onPressed: (){
                       Navigator.pop(context);
                  },
                  child: Text("Voltar"),
                ),
              ),
              new Container(
                alignment: Alignment.centerRight,
                margin: new EdgeInsets.only(top: 20.0, left: 210.0),
                child: RaisedButton(
                  onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => PerguntaFinalPage()
                       ));
                  },
                  child: Text("Proximo"),
                ),
              )
            ],)
            
          ],
        )
      ),
    );
  }

}