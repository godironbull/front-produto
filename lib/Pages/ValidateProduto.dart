import 'package:flutter/material.dart';
import 'package:produto_front/Pages/ButtonBar.dart';
import 'package:produto_front/Pages/HomePage.dart';
import 'package:produto_front/model/Produto.dart';
import 'package:produto_front/widgets/Colors.dart';

class ProdutoValidate extends StatelessWidget {
    ProdutoValidate(
      {super.key, required this.produto, required this.callbackfunction, required this.label});

  Produto produto;
  void Function() callbackfunction;
  String label;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(leading:IconButton(onPressed: (){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomePage()));
      }, icon: Icon(Icons.arrow_back))) ,
      backgroundColor: QueryColor.primary,
      body: Center(
          child: Container(
                  height: QueryColor.querymedia(context).height * 0.8,
                  width: QueryColor.querymedia(context).width * 0.8,
                  color: QueryColor.background,
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: QueryColor.querymedia(context).height * 0.15),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal:QueryColor.querymedia(context).width * 0.1 ),
                        child: Text('Descrição:\n ${produto.descricacao}',style: TextStyle(fontSize: 21,color: QueryColor.textColor),),
                      ),
                      SizedBox(height: QueryColor.querymedia(context).height * 0.05),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal:QueryColor.querymedia(context).width * 0.1 ),
                        child: Text('Preço: \nR\$${produto.preco}',style: TextStyle(fontSize: 21,color: QueryColor.textColor)),
                      ),
                      SizedBox(height: QueryColor.querymedia(context).height * 0.05,),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal:QueryColor.querymedia(context).width * 0.1),
                        child: Text('Estoque: \n${produto.estoque}',style: TextStyle(fontSize: 21,color: QueryColor.textColor)),
                      ),
                      SizedBox(height: QueryColor.querymedia(context).height * 0.05),
                      Padding(
                        padding:EdgeInsets.symmetric(horizontal: QueryColor.querymedia(context).width * 0.1),
                        child: MyButtonBar(labeltext: label, color: QueryColor.primary, callbackfunction: callbackfunction,),
                      ),
                    ],
                  ))));
  }
}
