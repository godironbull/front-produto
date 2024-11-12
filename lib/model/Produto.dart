class Produto {
  Produto(
      {required this.id,
      required this.preco,
      required this.descricacao,
      required this.estoque,
      required this.date});
  int id;
  String preco;
  String descricacao;
  int estoque;
  DateTime date;
  int get estoques => estoque;
  
}
