import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _itens = [];

  void _carregaItens(){
    for (var i = 0; i < 10; i++) {
      Map<String, dynamic> item = Map();
      item["titulo"] = "Título ${i} Lorem ipsum dolor sit amat";
      item["descricao"] = "Descrição ${i} ipsum dolor sit amat";
      _itens.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    _carregaItens();
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista"),
      ),      
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: _itens.length,
          itemBuilder: (context, indice){
            return ListTile(
              onTap: (){
                showDialog(
                  context: context,
                  builder: (context){
                    return AlertDialog(
                      title: Text(_itens[indice]["titulo"]),
                      titlePadding: EdgeInsets.all(20),
                      titleTextStyle: TextStyle(
                        fontSize: 20,
                        color: Colors.orange
                      ),
                      content: Text(_itens[indice]["descricao"]),
                      actions: <Widget>[
                        FlatButton(
                          color: Colors.blue,
                          onPressed: (){

                          },
                          child: Text(
                            "Sim",
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),                          
                        ),
                        FlatButton(
                          color: Colors.red,
                          onPressed: (){
                            
                          },
                          child: Text(
                            "Não",
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                        )
                      ],
                    );
                  }
                );
              },
              // onLongPress: () {

              // },
              title: Text(_itens[indice]["titulo"]),
              subtitle: Text(_itens[indice]["descricao"]),
            );
          },
        ),
      ),
    );
  }
}