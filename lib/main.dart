import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:food/core/theme/app_theme.dart';
import 'package:food/core/translations/l10n.dart';
import 'package:food/di/injector.dart';
import 'package:food/presentation/onboarding/login/bloc/login_bloc.dart';

import 'core/config/app_routes.dart';
import 'core/config/firebase_config.dart';
import 'core/constants/routers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configFirebase();
  await init();
  runApp(DevicePreview(
    enabled: kDebugMode,
    builder: (context) => const MyApp(), // Wrap your app
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (_) => LoginBloc(),
          ),
        ],
        child: MaterialApp(
          title: 'Order Food',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.appTheme,
          initialRoute: splashRoute,
          onGenerateRoute: AppRouters.generateRoute,
          locale: const Locale("en"),
          localizationsDelegates: const [
            S.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
          ],
          supportedLocales: const [
            Locale("vi"),
            Locale("en"),
          ],
        ));
  }
}
