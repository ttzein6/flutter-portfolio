import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/app_bloc/app_bloc.dart';
import 'package:portfolio/firebase_options.dart';
import 'package:portfolio/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await FirebaseAnalytics.instance.setAnalyticsCollectionEnabled(true);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tamer El Zein',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 28, 31, 35)),
          useMaterial3: true,
          expansionTileTheme: const ExpansionTileThemeData(
            shape: InputBorder.none,
            collapsedShape: InputBorder.none,
            tilePadding: EdgeInsets.zero,
          ),
          scrollbarTheme: ScrollbarThemeData(
            thumbColor: MaterialStatePropertyAll(
                const Color.fromARGB(255, 129, 181, 245).withOpacity(0.2)),
          )),
      home: BlocProvider<AppBloc>(
        create: (context) => AppBloc(),
        child: const HomeScreen(),
      ),
    );
  }
}
