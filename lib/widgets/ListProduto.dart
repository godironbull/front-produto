import 'package:flutter/material.dart';
import 'package:produto_front/Pages/HomePage.dart';
import 'package:produto_front/Pages/ValidateProduto.dart';
import 'package:produto_front/model/Produto.dart';
import 'package:produto_front/model/Provider.dart';
import 'package:produto_front/widgets/Colors.dart';
import 'package:produto_front/widgets/ProdutoTile.dart';
import 'package:provider/provider.dart';

class ProdutoList extends StatelessWidget {
  ProdutoList({required this.produto, super.key});
  List<Produto> produto;
  void deletepage(
      BuildContext context, int index, ProviderProdutos providerproduto) {
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => ProdutoValidate(
            produto: produto.elementAt(index),
            callbackfunction: () {
              providerproduto.deletar(produto.elementAt(index).id.toString());
              print("remover");
              Navigator.of(ctx).push(MaterialPageRoute(builder: (context)=>HomePage()));
            },
            label: "Remover")));
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProviderProdutos>(context);
    return ListView.builder(
        itemBuilder: (ctx, index) => ProdutoTile(
            produto: produto.elementAt(index),
            callbackfunction: () => deletepage(context, index, provider)),
        itemCount: produto.length);
  }
}
