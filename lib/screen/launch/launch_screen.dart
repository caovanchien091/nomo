import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:nomo/bloc/app_bloc.dart';
import 'package:theme/theme.dart';

class LaunchScreen extends StatefulWidget {
  const LaunchScreen({
    Key? key,
  }) : super(key: key);

  @override
  State<LaunchScreen> createState() => _LaunchScreenState();
}

class _LaunchScreenState extends State<LaunchScreen> {
  AppBloc get appBloc => context.read();

  @override
  void initState() {
    super.initState();
    appBloc.appLaunchEvent();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: CircularProgressIndicator(),
              ),
              SizedBox(
                width: context.space8,
                height: context.space8,
              ),
              Text(
                'Đợi xíu nha',
                textAlign: TextAlign.center,
                style: context.labelLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
