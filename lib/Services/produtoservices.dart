// ignore: depend_on_referenced_packages
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:produto_front/model/Produto.dart';

class ProdutoServices {
  static Future<List<Produto>> getallproduto() async {
    final produto =
        await http.get(Uri.parse("http://localhost:8000/api/produtos"));
    final map = jsonDecode(produto.body);
    if (produto.statusCode == 200) {
      List<Produto> produtolist = [];
      for (var element in map) {
        produtolist.add(Produto(
            id: element["id"],
            preco: element["preco"],
            descricacao: element["descricao"],
            estoque: element["estoque"],
            date: DateTime.now()));
      }
      return produtolist;
    } else {
      return [];
    }
  }

  static Future<bool?> deletarproduto(String id) async {
    final deletar = await http.delete(
      Uri.parse(
        "http://localhost:8000/api/produto/${id}",
      ),
    );
    if (deletar.statusCode==200) {
      return true;
    } else {
      true;
    }
  }

  static Future<bool> criarproduto(
      String descricacao, String preco, String estoque) async {
    final produtoscasda = await http.post(
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
           "descricao": descricacao,
           "preco": "150",
           "estoque": int.parse(estoque),
           "data": "2024-01-01T03:00:00.000Z"
         }),
        Uri.parse(
          "http://localhost:8000/api/produto",
        ));
    if (produtoscasda.statusCode == 201) {
      return true;
    } else {
      return false;
    }
  }
}
