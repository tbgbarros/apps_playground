import 'package:flutter/material.dart';

class FunnyButtonWidget extends StatelessWidget {
  const FunnyButtonWidget({
    super.key,
    required this.assetId,
    required this.callBack,
    required this.name
  });

  final int assetId;
  final String name;
  final void Function(int) callBack;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 200,
      height: 125,
      child: ElevatedButton(onPressed: (){
        callBack(assetId);
      }, child: Text('Botão $name')),
    );
  }
}