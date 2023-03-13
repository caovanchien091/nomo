import 'dart:math';

import 'package:flutter/material.dart';
import 'package:theme/extension/color_context_extension.dart';

import 'model/sign_in_model.dart';
import 'widget/sign_in_form.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({
    Key? key,
  }) : super(key: key);

  @override
  State createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.passthrough,
        children: [
          CustomPaint(
            painter: PaintSignInBackground(
              color: context.primaryColor,
            ),
            child: Container(),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: context.primaryColor,
            ),
            child: FormSignIn(
              model: SignInModel(),
            ),
          ),
        ],
      ),
    );
  }
}

class PaintSignInBackground extends CustomPainter {
  final Color color;

  PaintSignInBackground({
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    double width = size.width;
    double height = size.height;

    double rootWidth = 0;
    double rootHeight = 0;

    Paint paint = Paint()
      ..color = color.withOpacity(0.4)
      ..style = PaintingStyle.fill;

    Path pathOne = Path()
      ..lineTo(rootWidth, height * 0.2)
      ..quadraticBezierTo(width * 0.2, height * 0.1, width * 0.4, height * 0.3)
      ..quadraticBezierTo(width * 0.6, height * 0.5, width * 0.8, height * 0.3)
      ..quadraticBezierTo(width * 0.9, height * 0.2, width, height * 0.3)
      ..lineTo(width, 0)
      ..lineTo(0, 0)
      ..lineTo(rootWidth, height * 0.2);

    Path pathTwo = Path()
      ..lineTo(rootWidth, height * 0.3)
      ..quadraticBezierTo(width * 0.2, height * 0.1, width * 0.4, height * 0.3)
      ..quadraticBezierTo(width * 0.6, height * 0.5, width * 0.8, height * 0.25)
      ..quadraticBezierTo(width * 0.9, height * 0.1, width, height * 0.2)
      ..lineTo(width, 0)
      ..lineTo(0, 0)
      ..lineTo(rootWidth, height * 0.2);

    Path pathThree = Path()
      ..lineTo(rootWidth, height * 0.4)
      ..quadraticBezierTo(width * 0.2, height * 0.1, width * 0.4, height * 0.3)
      ..quadraticBezierTo(width * 0.6, height * 0.5, width * 0.8, height * 0.35)
      ..quadraticBezierTo(width, height * 0.2, width, height * 0.5)
      ..lineTo(width, 0)
      ..lineTo(0, 0)
      ..lineTo(rootWidth, height * 0.4);

    canvas.drawPath(pathOne, paint);
    canvas.drawPath(pathTwo, paint);
    canvas.drawPath(pathThree, paint);
  }

  @override
  bool shouldRepaint(oldDelegate) {
    return true;
  }
}
