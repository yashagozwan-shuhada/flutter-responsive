import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_responsive/presentation/pages/sign_in_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, _, __) {
        return MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          theme: _buildTheme(),
          home: const SignInPage(),
        );
      },
    );
  }

  ThemeData _buildTheme() {
    const primary = Color(0xFF5429FF);
    const onPrimary = Color(0xFFFFFFFF);

    final baseTheme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primary,
        primary: primary,
        onPrimary: onPrimary,
      ),
    );

    return baseTheme.copyWith(
      textTheme: GoogleFonts.interTextTheme(
        baseTheme.textTheme,
      ),
    );
  }
}
