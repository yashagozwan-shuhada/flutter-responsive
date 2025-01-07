import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsive/app.dart';
import 'package:flutter_responsive/core/translation/index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  runApp(
    EasyLocalization(
      supportedLocales: const [
        Locale('en'),
        Locale('id'),
      ],
      path: 'assets/langs',
      fallbackLocale: const Locale('en'),
      assetLoader: const CodegenLoader(),
      child: const App(),
    ),
  );
}
