import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:weathery/core/presentation/app.dart';
import 'package:weathery/core/routes/app_router.dart';
import 'package:weathery/di/di_setup.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: '.env');
  configureDependencies();
  getIt.registerSingleton<AppRouter>(AppRouter());

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
    ),
  );

  runApp(
    const App(),
  );
}
