import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sports_event_app/app.dart';
import 'package:sports_event_app/core/service_locator.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );

  /// Initializes the service locator.
  setupLocator();

  final app = initializeApp();

  runApp(app);
}

/// Initializes the app.
Widget initializeApp() {
  return const SportsEventApp();
}
