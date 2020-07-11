import 'package:flutter/material.dart';
import 'TelaFinal.dart';

class PerguntaFinalPage extends StatefulWidget {
  PerguntaFinalPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _PerguntaFinalPageState createState() => _PerguntaFinalPageState();
}

class _PerguntaFinalPageState extends State<PerguntaFinalPage> {
  String teste;

    _navigatePerguntaFinal(BuildContext context) async {
    
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => TelaFinalPage()),
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
        title: Text("Pergunta Final"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:
                Text("Pergunta: De onde é a invenção do chuveiro elétrico?")
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:RaisedButton(
                onPressed: (){
                     showAlertERROU(context);
                },
                child: Text("Inglaterra")
                )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:RaisedButton(
                onPressed: (){
                     showAlertAcertou(context);
                },
                child: Text("Brasil")
                )
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child:RaisedButton(
                onPressed: (){
                     showAlertERROU(context);
                },
                child: Text("Estados Unidos")
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
                       Navigator.push(context, MaterialPageRoute(builder: (context) => TelaFinalPage()
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