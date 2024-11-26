import 'dart:async';
import 'dart:developer';
import 'package:device_preview/device_preview.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:food/core/theme/app_theme.dart';
import 'package:food/core/translations/l10n.dart';
import 'package:food/di/injector.dart';
import 'package:food/presentation/onboarding/login/bloc/login_bloc.dart';
import 'core/app/app_cubit.dart';
import 'core/config/app_routes.dart';
import 'core/config/firebase_config.dart';
import 'core/constants/routers.dart';
import 'core/widgets/custom_error_widget.dart';

Future<void> main() async {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();

    await configFirebase();

    FirebaseCrashlytics.instance.setCrashlyticsCollectionEnabled(true);
    FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterError;

    await init();

    runApp(DevicePreview(
      enabled: !kDebugMode,
      builder: (context) => MultiBlocProvider(providers: [
        BlocProvider(
          create: (_) => getIt.get<AppCubit>(),
        ),
        BlocProvider(
          create: (_) => LoginBloc(),
        ),
      ], child: const MyApp()),
    ));
  }, (error, stackTrace) {
    log(error.toString());
    FirebaseCrashlytics.instance.recordError(error, stackTrace);
  });
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    getIt.get<AppCubit>().getLocale();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return MaterialApp(
          title: 'Order Food',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.appTheme,
          initialRoute: splashRoute,
          onGenerateRoute: AppRouters.generateRoute,
          locale: state.locale,
          builder: (context, child) {
            ErrorWidget.builder = (errorDetails) {
              return const CustomErrorWidget();
            };
            return child!;
          },
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
        );
      },
    );
  }
}
