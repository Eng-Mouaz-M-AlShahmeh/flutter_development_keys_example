/* Developed by Eng Mouaz M. AlShahmeh */
import 'package:flutter/material.dart';
import 'package:keys_example/models/dash.dart';

class IUniqueKey extends StatelessWidget {
  const IUniqueKey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlutterDash dash = const FlutterDash(name: 'Dash', canFly: true);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Unique Key'),
        centerTitle: true,
      ),
      body: Center(child: Text(dash.name!, key: UniqueKey())),
    );
  }
}