import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/app_bloc/app_bloc.dart';
import 'package:portfolio/models/experiences_model.dart';
import 'package:portfolio/services/colors.dart';

class ExperiencesScreen extends StatelessWidget {
  const ExperiencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // bool isMobile = MediaQuery.of(context).size.shortestSide < 600;
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        state as AppLoaded;
        return Container(
          constraints: const BoxConstraints(maxWidth: 700, minWidth: 400),
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Experience",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ...List.generate(
                state.experiences?.length ?? 0,
                (index) => ExperienceWidget(
                  experience: state.experiences!.elementAt(index),
                  isNotLast: index < state.experiences!.length - 1,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ExperienceWidget extends StatelessWidget {
  final Experiences experience;
  final bool isNotLast;
  const ExperienceWidget(
      {super.key, required this.experience, required this.isNotLast});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          experience.works?.first.name ?? "",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.normal,
          ),
        ),
        Text(
          experience.works?.first.company ?? "",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontWeight: FontWeight.w300,
          ),
        ),
        Text(
          experience.year ?? "",
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 13,
            fontWeight: FontWeight.w400,
          ),
        ),
        Text(
          experience.works?.first.desc ?? "",
          style: const TextStyle(
            color: Colors.grey,
            fontSize: 13,
            fontWeight: FontWeight.w300,
          ),
        ),
        if (isNotLast) Divider(color: Colors.grey[700]),
      ],
    );
  }
}
