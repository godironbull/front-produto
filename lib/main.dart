import 'package:flutter/material.dart';
import 'package:produto_front/Pages/HomePage.dart';
import 'package:produto_front/model/Provider.dart';
import 'package:produto_front/widgets/Colors.dart';
import 'package:produto_front/widgets/ProdutoTile.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => ProviderProdutos())
        ],
        child: MaterialApp(
            title: "Produto-Front",
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                  seedColor: Colors.black,
                  primary: QueryColor.primary,
                  secondary: QueryColor.secondary),
              useMaterial3: true,
            ),
            home: HomePage()));
  }
}
