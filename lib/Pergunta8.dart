import 'package:flutter/material.dart';
import 'Pergunta9.dart';

class Pergunta8Page extends StatefulWidget {
  Pergunta8Page({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _Pergunta8PageState createState() => _Pergunta8PageState();
}

class _Pergunta8PageState extends State<Pergunta8Page> {
  String teste;

    _navigatePergunta8(BuildContext context) async {
    
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => Pergunta9Page()),
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
        title: Text("Pergunta 8"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                Text("Pergunta: Qual o livro mais vendido no mundo a seguir à Bíblia?")
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:RaisedButton(
                onPressed: (){
                     showAlertERROU(context);
                },
                child: Text("O Senhor dos Anéis")
                )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:RaisedButton(
                onPressed: (){
                     showAlertAcertou(context);
                },
                child: Text("Dom Quixote")
                )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:RaisedButton(
                onPressed: (){
                     showAlertERROU(context);
                },
                child: Text("O Pequeno Príncipe")
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
                       Navigator.push(context, MaterialPageRoute(builder: (context) => Pergunta9Page()
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