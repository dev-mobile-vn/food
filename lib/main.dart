import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food/config/app_routes.dart';
import 'package:food/config/firebase_config.dart';
import 'package:food/core/theme/app_theme.dart';
import 'package:food/presentation/onboarding/login/bloc/login_bloc.dart';
import 'core/constants/routers.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configFirebase();
  runApp(const MyApp());
  // runApp(DevicePreview(
  //   enabled: !kReleaseMode,
  //   builder: (context) => const MyApp(), // Wrap your app
  // ));
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
        ));
  }
}
