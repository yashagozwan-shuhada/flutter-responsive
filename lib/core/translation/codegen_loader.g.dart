// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "greeting": "Good Morning",
  "forgotPassword": "Forgot Password?",
  "signIn": "Sign In",
  "rememberMe": "Remember me"
};
static const Map<String,dynamic> id = {
  "greeting": "Selamat Pagi",
  "forgotPassword": "Lupa Kata Sandi?",
  "signIn": "Masuk",
  "rememberMe": "Ingat saya"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "id": id};
}
