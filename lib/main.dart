import 'package:flutter/material.dart';
import 'package:qlevar_router/qlevar_router.dart';
import 'package:uiproject/routes/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final router = QRouterDelegate(
      AppRoutes.routes(),
      withWebBar: true,
    );
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routeInformationParser: const QRouteInformationParser(),
      routerDelegate: router,
    );
  }
}
