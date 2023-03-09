import 'package:content/str.dart';
import 'package:core/core.dart';
import 'package:theme/theme.dart';
import 'package:flutter/material.dart';

class NotFoundScreen extends StatelessWidget {
  const NotFoundScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Image.asset(
                ImagePaths.notFoundError,
              ),
            ),
            Text(
              Str.of(context).appErrorPageNotFound,
              style: context.titleLarge.bold.apply(
                color: context.primaryColor,
              ),
            ),
            TextButton(
              child: Text(
                Str.of(context).appErrorClickToBack,
                style: context.bodySmall.apply(
                  color: context.onSurfaceColor,
                ),
              ),
              onPressed: () {
                Injector.I.get<SettingController>().updateLang('en');
              },
            ),
            TextButton(
              child: Text(
                Str.of(context).appErrorClickToBack,
                style: context.bodySmall.apply(
                  color: context.onSurfaceColor,
                ),
              ),
              onPressed: () {
                Injector.I.get<SettingController>().updateLang('vi');
              },
            ),
          ],
        ),
      ),
    );
  }
}
