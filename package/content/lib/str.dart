import 'package:content/lang/lang.dart';
import 'package:content/lang/lang_en.dart';
import 'package:content/lang/lang_vi.dart';
import 'package:flutter/material.dart';
import 'package:core/core.dart';

class Str {
  static List<Locale> supports = [
    const Locale('vi'),
    const Locale('en'),
  ];

  static Map<String, Lang> languages = {
    'en': LangEn(),
    'vi': LangVi(),
  };

  static Lang of(BuildContext context) {
    return languages[context.lang] ?? LangEn();
  }
}
