import 'package:flutter/material.dart';

import 'page/setting/setting_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SettingPage();
  }
}
