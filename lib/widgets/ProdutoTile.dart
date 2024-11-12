import 'package:flutter/material.dart';
import 'package:produto_front/Pages/ValidateProduto.dart';
import 'package:produto_front/model/Produto.dart';
import 'package:produto_front/widgets/Colors.dart';

// ignore: must_be_immutable
class ProdutoTile extends StatelessWidget {
  ProdutoTile(
      {required this.produto, required this.callbackfunction, super.key});
  final Produto produto;
  void Function() callbackfunction;
 
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(
            vertical: QueryColor.querymedia(context).height * 0.05,
            horizontal: QueryColor.querymedia(context).width * 0.1),
        child: Card.outlined(
          color: QueryColor.background,
          child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: QueryColor.querymedia(context).width * 0.02,
                  vertical: QueryColor.querymedia(context).height * 0.02),
              child: Container(
                  height: QueryColor.querymedia(context).height * 0.29,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ListTile(
                        title: Text(
                          "Preço",
                          style: TextStyle(
                              fontSize: 21, color: QueryColor.primary),
                        ),
                        subtitle: Text(produto.preco.toString(),
                            style: TextStyle(
                                fontSize: 21, color: QueryColor.textColor)),
                      ),
                      ListTile(
                        title: Text("Descrição",
                            style: TextStyle(
                                fontSize: 21, color: QueryColor.primary)),
                        subtitle: Text(produto.descricacao,
                            style: TextStyle(
                                fontSize: 21, color: QueryColor.textColor)),
                      ),
                      ListTile(
                          title: Text("Estoque",
                              style: TextStyle(
                                  fontSize: 21, color: QueryColor.primary)),
                          subtitle: Text(produto.estoque.toString(),
                              style: TextStyle(
                                  fontSize: 21, color: QueryColor.textColor))),
                      ListTile(
                        trailing: IconButton(
                            color: QueryColor.primary,
                            onPressed: callbackfunction,
                            icon: Icon(Icons.delete)),
                      )
                    ],
                  ))),
        ));
  }
}
