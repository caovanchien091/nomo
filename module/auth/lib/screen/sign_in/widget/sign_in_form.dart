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
    var contro = TextEditingController();
    return Container(
      margin: EdgeInsets.all(16),
      child: Form(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextField(
              controller: contro,
              onChanged: (value) {
                model.userName = value;
              },
              decoration: InputDecoration(errorText: 'aaa'),
            ),
            TextFormField(
              onChanged: (value) {
                model.password = value;
              },
            ),
            ElevatedButton(
              onPressed: () {
                contro.notifyListeners();
              },
              child: Text("Hhahaha"),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomTextField extends TextField {
  const CustomTextField({
    Key? key,
  }) : super(key: key);


}
