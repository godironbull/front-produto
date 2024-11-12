import 'package:flutter/material.dart';
import 'package:produto_front/Pages/ButtonBar.dart';
import 'package:produto_front/Pages/HomePage.dart';
import 'package:produto_front/Pages/ValidateProduto.dart';
import 'package:produto_front/model/Produto.dart';
import 'package:produto_front/model/Provider.dart';
import 'package:produto_front/widgets/Colors.dart';
import 'package:provider/provider.dart';

class Cadastroprodutos extends StatelessWidget {
  const Cadastroprodutos({super.key, required this.label});
  final String label;
  void validateproduto(BuildContext context, String preco, String descricacao,
      String estoque, ProviderProdutos produto) {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) => ProdutoValidate(
            produto: Produto(
                id: -1,
                preco: preco,
                descricacao: descricacao,
                estoque: int.parse(estoque),
                date: DateTime.now()),
            callbackfunction: () {
              produto.criarproduto(descricacao, preco, estoque);
              Navigator.of(context).pop();
            },
            label: "Confirmar")));
  }

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<ProviderProdutos>(context);

    TextEditingController preco = TextEditingController();
    TextEditingController estoque = TextEditingController();
    TextEditingController descricacao = TextEditingController();

    return Scaffold(
      appBar: AppBar(leading:IconButton(onPressed: (){
        Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>HomePage()));
      }, icon: Icon(Icons.arrow_back)) ,),
        backgroundColor: QueryColor.primary,
        body: Center(
            child: Container(
                height: QueryColor.querymedia(context).height * 0.8,
                width: QueryColor.querymedia(context).width * 0.8,
                color: QueryColor.background,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: QueryColor.querymedia(context).height * 0.15),
                    Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                QueryColor.querymedia(context).width * 0.1),
                        child: SizedBox(
                          child: TextField(
                            controller: descricacao,
                            decoration: InputDecoration(
                                hintText: "Descrição",
                                hintStyle:
                                    TextStyle(color: QueryColor.textColor),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        )),
                    SizedBox(
                        height: QueryColor.querymedia(context).height * 0.05),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal:
                              QueryColor.querymedia(context).width * 0.1),
                      child: SizedBox(
                        child: TextField(
                          controller: preco,
                          decoration: InputDecoration(
                              hintText: "Preço",
                              hintStyle: TextStyle(color: QueryColor.textColor),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10))),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: QueryColor.querymedia(context).height * 0.05,
                    ),
                    Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal:
                                QueryColor.querymedia(context).width * 0.1),
                        child: SizedBox(
                          child: TextField(
                            controller: estoque,
                            decoration: InputDecoration(
                                hintText: "Estoque",
                                hintStyle:
                                    TextStyle(color: QueryColor.textColor),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10))),
                          ),
                        )),
                    SizedBox(
                        height: QueryColor.querymedia(context).height * 0.1),
                    Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal:
                              QueryColor.querymedia(context).width * 0.1),
                      child: MyButtonBar(
                        callbackfunction: () => validateproduto(
                            context,
                            preco.text,
                            descricacao.text,
                            estoque.text,
                            provider),
                        labeltext: label,
                        color: QueryColor.primary,
                      ),
                    ),
                  ],
                ))));
  }
}
