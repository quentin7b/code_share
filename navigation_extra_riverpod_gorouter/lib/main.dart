import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:navigation_extra_riverpod_gorouter/router.dart';

void main() {
  // This is needed to ensure that the `GoRouter` changes the url in web
  GoRouter.optionURLReflectsImperativeAPIs = true;
  runApp(const ProviderScope(child: MainApp()));
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
