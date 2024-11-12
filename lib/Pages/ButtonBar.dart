import 'package:flutter/material.dart';
import 'package:produto_front/model/Produto.dart';
import 'package:produto_front/widgets/Colors.dart';

class MyButtonBar extends StatelessWidget {
  const MyButtonBar(
      {required this.labeltext,
      required this.callbackfunction,
      super.key,
      required this.color});
  final String labeltext;
  final Color color;
  final void Function() callbackfunction;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callbackfunction,
      child: Card.outlined(
      color: color,
      child: Container(
        height: QueryColor.querymedia(context).height * 0.055,
        width:QueryColor.querymedia(context).width * 0.7,
        child: Center(
            child: Text(
          labeltext,
          style: const TextStyle(fontSize: 21,color: Colors.white),
        )),
      ),
    ));
  }
}
