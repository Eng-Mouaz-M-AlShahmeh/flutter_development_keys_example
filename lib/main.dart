/* Developed by: Eng Mouaz M. Al-Shahmeh */
import 'package:flutter/material.dart';
import 'package:keys_example/buttons/buttons.dart';
import 'package:keys_example/keys/global_key.dart';
import 'package:keys_example/keys/object_key.dart';
import 'package:keys_example/keys/unique-key.dart';
import 'package:keys_example/keys/value_key.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Development Keys Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListKeys(),
    );
  }
}

class ListKeys extends StatelessWidget {
  const ListKeys({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Development Keys Example'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            iOutlinedButtonNoKey(
              context,
              'Value Key',
              () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const IValueKey()))
            ),
            const SizedBox(height: 10),
            iOutlinedButtonNoKey(
                context,
                'Object Key',
                    () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const IObjectKey()))
            ),
            const SizedBox(height: 10),
            iOutlinedButtonNoKey(
                context,
                'Unique Key',
                    () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const IUniqueKey()))
            ),
            const SizedBox(height: 10),
            iOutlinedButtonNoKey(
                context,
                'Global Key',
                    () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => IGlobalKey()))
            ),
          ],
        ),
      ),
    );
  }
}

