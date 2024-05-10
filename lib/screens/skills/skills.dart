import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sanity_image_url/flutter_sanity_image_url.dart';
import 'package:portfolio/app_bloc/app_bloc.dart';
import 'package:portfolio/models/skills_model.dart';
import 'package:portfolio/services/colors.dart';
import 'package:portfolio/services/common.dart';

// import
class SkillsScreen extends StatelessWidget {
  const SkillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        state as AppLoaded;
        return Container(
          constraints: const BoxConstraints(maxWidth: 700, minWidth: 400),
          child: Container(
            margin: const EdgeInsets.only(top: 10, bottom: 10),
            // height: MediaQuery.of(context).size.height - 70,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: AppColors.bgColor,
              borderRadius: const BorderRadius.all(
                Radius.circular(15),
              ),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Skills",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SkillsAndExp(),
              ],
            ),
          ),
        );
      },
    );
  }
}

class SkillsAndExp extends StatelessWidget {
  const SkillsAndExp({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.shortestSide < 600;
    var container = Container(
      width: double
          .infinity, // (isMobile ? 0.8 : 0.4) * MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          if (state is AppLoaded) {
            return Wrap(
              spacing: isMobile ? 15 : 30,
              children: [
                for (var skill in state.skills ?? []) SkillCard(skill: skill),
              ],
            );
          } else {
            return Container();
          }
        },
      ),
    );
    return container;
  }
}

class SkillCard extends StatelessWidget {
  final Skills skill;
  const SkillCard({super.key, required this.skill});
// sanityClient is an instance of SanityClient from flutter_sanity

  @override
  Widget build(BuildContext context) {
    return Container(
      color: skill.bgColor != null ? const Color(0x000ffeee) : Colors.white,
      padding: const EdgeInsets.all(8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
              width: 50,
              height: 50,
              child: Image.network(CommonFunctions.urlFor(
                      context, SanityImage.fromJson(skill.icon!.toJson()))
                  .url())),
          Text(
            skill.name ?? "",
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
