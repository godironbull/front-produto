import 'package:flutter/material.dart';
import 'package:produto_front/Pages/CadastroProdutos.dart';
import 'package:produto_front/model/Provider.dart';
import 'package:produto_front/widgets/Colors.dart';
import 'package:produto_front/widgets/ListProduto.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  void routepageaddproduto(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>const Cadastroprodutos(label: "Cadastrar",)));
  }
  @override
  Widget build(BuildContext context) {
    final produto = Provider.of<ProviderProdutos>(context);
    produto.getallproduto();
    return Scaffold(
        backgroundColor: const Color.fromARGB(188, 0, 131, 143),
        body: ProdutoList(
          produto: produto.listproduto,
        ),
        floatingActionButton: Container(
            height: QueryColor.querymedia(context).height * 0.065,
            width: QueryColor.querymedia(context).height * 0.065,
            child: FloatingActionButton(
                backgroundColor: QueryColor.primary,
                onPressed: ()=>routepageaddproduto(context),
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ))));
  }
}
