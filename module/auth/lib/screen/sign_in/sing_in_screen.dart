import 'dart:math';

import 'package:flutter/material.dart';

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
      body: Center(
        child: FormSignIn(
          model: SignInModel(),
        ),
      ),
    );
  }
}

class ScaffoldExpandAppbar extends StatelessWidget {
  const ScaffoldExpandAppbar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(
            pinned: true,
            delegate: ScaffoldExpandDelegate(),
          ),
          SliverList(
            delegate: SliverChildListDelegate.fixed(
              [
                Container(
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 100,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  color: Colors.grey,
                ),
                Container(
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 100,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  color: Colors.grey,
                ),
                Container(
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 100,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  color: Colors.grey,
                ),
                Container(
                  height: 100,
                  color: Colors.blue,
                ),
                Container(
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 100,
                  color: Colors.green,
                ),
                Container(
                  height: 100,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ScaffoldExpandDelegate extends SliverPersistentHeaderDelegate {
  double maxSize = 200;
  double minSize = 56;

  Widget get minChild => Container(
        height: minSize,
        color: Colors.yellow,
      );

  Widget get maxChild => Container(
        height: maxSize,
        color: Colors.deepPurple,
      );

  @override
  Widget build(context, shrinkOffset, overlapsContent) {
    double expandSize = maxSize - minSize;
    double dragPosition = max(expandSize - shrinkOffset, 0);
    double percent = dragPosition / expandSize;

    return Stack(
      children: [
        Opacity(
          opacity: percent,
          child: maxChild,
        ),
        Opacity(
          opacity: 1 - percent,
          child: minChild,
        ),
      ],
    );
  }

  @override
  double get maxExtent => maxSize;

  @override
  double get minExtent => minSize;

  @override
  bool shouldRebuild(oldDelegate) {
    return true;
  }
}
