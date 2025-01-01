import 'package:flutter/material.dart';

class AppLayoutBuilderWidget extends StatelessWidget {
  final int randomNumber;
  const AppLayoutBuilderWidget({super.key, required this.randomNumber});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constrants) {
      return Flex(direction: Axis.horizontal);
    });
  }
}
