/* Developed by Eng Mouaz M. AlShahmeh */
import 'package:flutter/material.dart';
import 'package:keys_example/models/dash.dart';

class IObjectKey extends StatelessWidget {
  const IObjectKey({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlutterDash dash = const FlutterDash(name: 'Dash', canFly: true);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Object Key'),
        centerTitle: true,
      ),
      body: Center(child: Text(dash.name!, key: ObjectKey(dash))),
    );
  }
}