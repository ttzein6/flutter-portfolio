import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:portfolio/screens/education/education.dart';
import 'package:portfolio/screens/experience/experience.dart';
import 'package:portfolio/screens/footer.dart';
import 'package:portfolio/services/colors.dart';
import 'package:portfolio/screens/contact/contact.dart';
import 'package:portfolio/screens/greeting/greeting.dart';
import 'package:portfolio/screens/projects/projects.dart';
import 'package:portfolio/screens/skills/skills.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => HomeState();
}

class HomeState extends State<Home> {
  List<Widget> screens = [];

  final ScrollController _listController = ScrollController();
  bool showScrollBottomButton = false;
  void Function()? scrollListener;
  @override
  void initState() {
    scrollListener = () {
      if ((_listController.position.pixels >= 300)) {
        setState(() {
          showScrollBottomButton = true;
        });
      } else {
        setState(() {
          showScrollBottomButton = false;
        });
      }
    };
    if (scrollListener != null) _listController.addListener(scrollListener!);

    screens = [
      const GreetingScreen(),
      const ExperiencesScreen(),
      const EducationScreen(),
      const SkillsScreen(),
      const Projects(),
      Contact(),
      const Footer(),
    ];
    super.initState();
  }

  @override
  void dispose() {
    if (scrollListener != null) {
      _listController.removeListener(scrollListener!);
      scrollListener = null;
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      floatingActionButtonAnimator: FloatingActionButtonAnimator.scaling,
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      floatingActionButton: showScrollBottomButton
          ? FloatingActionButton.small(
              onPressed: () {
                _listController.animateTo(0,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.bounceInOut);
              },
              child: const Icon(
                Icons.arrow_drop_up,
              ),
            )
          : null,
      body: LayoutBuilder(builder: (context, cst) {
        return SizedBox(
          height: cst.maxHeight,
          width: cst.maxWidth,
          child: Stack(
            children: [
              Positioned(
                width: cst.maxWidth * 1.7,
                top: 0,
                bottom: 0,
                child: Image.asset(
                  "assets/Backgrounds/Spline.png",
                ),
              ).animate().fadeIn(duration: const Duration(seconds: 2)),
              Positioned.fill(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
                  child: const SizedBox(),
                ),
              ),
              SingleChildScrollView(
                controller: _listController,
                child: SizedBox(
                  width: cst.maxWidth,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: screens
                        .map((e) => e.animate().fade(
                            begin: 0,
                            end: 0.9,
                            duration: const Duration(milliseconds: 1200)))
                        .toList(),
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
