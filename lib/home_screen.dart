import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sanity/flutter_sanity.dart';
import 'package:portfolio/app_bloc/app_bloc.dart';
import 'package:portfolio/home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    BlocProvider.of<AppBloc>(context).add(GetProfileConfig());
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await FirebaseAnalytics.instance.logEvent(name: 'enter_home_screen');
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          if (state is AppLoaded) {
            // return Text("${state.profileConfig?.name}");
            return const Home();
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
