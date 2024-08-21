import 'package:bot_toast/bot_toast.dart';
import 'package:deaf_app/routing/app_navigator.dart';
import 'package:deaf_app/routing/app_route_generator.dart';
import 'package:deaf_app/theme/deaf_theme.dart';
import 'package:flutter/material.dart';
import 'routing/app_route_names.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Deaf App',
      debugShowCheckedModeBanner: false,
      navigatorObservers: [BotToastNavigatorObserver()],
      builder: (context, child) {
        child = BotToastInit()(context, child);
        return MediaQuery(
            data: MediaQuery.of(context).copyWith(
              textScaler: const TextScaler.linear(1.0),
            ),
            child: Theme(
              data: DeafTheme.lightTheme,
              child: child,
            ));
      },
      initialRoute: AppRoutesNames.initial,
      navigatorKey: AppNavigation.navigatorKey,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
