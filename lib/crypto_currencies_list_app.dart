import 'package:cryptoriencies_app/router/router.dart';
import 'package:cryptoriencies_app/theme/theme.dart';
import 'package:flutter/material.dart';

class CryptoCurrenciesListApp extends StatelessWidget {
  const CryptoCurrenciesListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Crypto List', theme: darkTheme, routes: routes);
  }
}
