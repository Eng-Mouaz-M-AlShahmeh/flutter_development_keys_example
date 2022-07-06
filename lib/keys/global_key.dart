/* Developed by Eng Mouaz M. AlShahmeh */
import 'package:flutter/material.dart';

class IGlobalKey extends StatelessWidget {
  IGlobalKey({Key? key}) : super(key: key);

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Global Key'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Form(
          key: formKey,
          child: ListView(
            children: [
              TextFormField(
                validator: ((value) {
                  if (value == null) {
                    return 'Invalid value';
                  }
                  if (value.isEmpty) {
                    return 'Empty value';
                  }
                  return null;
                }),
              ),
              TextFormField(
                validator: ((value) {
                  if (value == null) {
                    return 'Invalid value';
                  }
                  if (value.isEmpty) {
                    return 'Empty value';
                  }
                  return null;
                }),
              ),
              TextButton(
                  onPressed: () {
                    //access the Form widgets variables and functions
                    //in this case we use the validate() method
                    if (!formKey.currentState!.validate()) {
                      print('error in the form');
                      return;
                    }
                  },
                  child: const Text('Validate'))
            ],
          ),
        ),
      ),
    );
  }
}