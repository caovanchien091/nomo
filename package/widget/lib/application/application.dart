import 'package:core/core.dart';
import 'package:flutter/material.dart';
import 'package:theme/theme.dart';
import 'package:widget/widget.dart';

class Application extends StatelessWidget {
  final String initRoute;
  final BootRoutes routes;
  final SettingController controller;

  const Application({
    Key? key,
    required this.initRoute,
    required this.routes,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(context) {
    return CustomBloc(
      bloc: controller,
      builder: (context, state) {
        return MaterialApp(
          // Route
          initialRoute: initRoute,
          onGenerateRoute: routes,
          // Theme
          theme: CustomTheme.light,
          darkTheme: CustomTheme.dark,
          themeMode: ThemeMode.light,
          // Debug
          showSemanticsDebugger: false,
        );
      },
    );
  }
}
