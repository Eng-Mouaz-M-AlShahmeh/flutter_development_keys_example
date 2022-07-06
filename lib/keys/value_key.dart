/* Developed by Eng Mouaz M. AlShahmeh */
import 'package:flutter/material.dart';

class IValueKey extends StatelessWidget {
  const IValueKey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int itemNumber = 100;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Value Key'),
        centerTitle: true,
      ),
      body: Center(child: Text('Item $itemNumber', key: ValueKey('text_$itemNumber'))),
    );
  }
}
