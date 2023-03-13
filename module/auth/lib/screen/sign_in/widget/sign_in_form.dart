import 'package:flutter/material.dart';

import '../model/sign_in_model.dart';

class FormSignIn extends StatelessWidget {
  final SignInModel model;

  const FormSignIn({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            onChanged: (value) {
              model.userName = value;
            },
          ),
          TextFormField(
            onChanged: (value) {
              model.password = value;
            },
          ),
        ],
      ),
    );
  }
}