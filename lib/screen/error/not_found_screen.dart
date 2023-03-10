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
                filterQuality: FilterQuality.medium,
              ),
            ),
            Text(
              'Không tìm thấy trang',
              style: context.titleLarge.bold.apply(
                color: context.primaryColor,
              ),
            ),
            TextButton(
              child: Text(
                'Nhấn để trở lại',
                style: context.bodySmall.apply(
                  color: context.onSurfaceColor,
                ),
              ),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
