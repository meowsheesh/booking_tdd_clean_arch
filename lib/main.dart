import 'package:flutter/material.dart';
import 'package:flutter_application_1/config/route/go_router_provider.dart';
import 'package:flutter_application_1/config/theme/app_themes.dart';
import 'package:flutter_application_1/features/booking/domain/usecases/get_hotel_info.dart';
import 'package:flutter_application_1/features/booking/presentation/bloc/hotel/hotel_page_bloc.dart';
import 'package:flutter_application_1/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependencies();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  final GoRouter _goRouterProvider = GoRouterProvider().goRoute();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: theme(),
        routerConfig: _goRouterProvider,
    );
  }
}