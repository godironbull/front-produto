import 'package:flutter/material.dart';
import 'package:produto_front/Services/produtoservices.dart';
import 'package:produto_front/model/Produto.dart';

class ProviderProdutos extends ChangeNotifier{
  List<Produto> listproduto=[];

  void getallproduto()async{
    listproduto=await ProdutoServices.getallproduto();
  }
  void deletar(String id)async{
    final result=await ProdutoServices.deletarproduto(id);
  }

  void criarproduto(String descricacao,String preco, String estoque)async{
    await ProdutoServices.criarproduto(descricacao, preco, estoque);
  }
  
}