import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/app_bloc/app_bloc.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:portfolio/services/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatelessWidget {
  const Projects({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        state as AppLoaded;
        ExpansionPanel(
          headerBuilder: (_, i) {
            return SizedBox();
          },
          body: SizedBox(),
        );
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
          child: ExpansionTile(
            controlAffinity: ListTileControlAffinity.platform,
            maintainState: true,
            iconColor: Colors.grey[400],
            collapsedIconColor: Colors.grey[400],
            initiallyExpanded: true,
            title: const Text(
              "Projects",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            ),
            children: [
              ...List.generate(
                state.projects?.length ?? 0,
                (index) => ProjectWidget(
                  isNotLast: index < state.projects!.length - 1,
                  project: state.projects!.elementAt(index),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ProjectWidget extends StatelessWidget {
  final Project project;
  final bool isNotLast;
  const ProjectWidget(
      {super.key, required this.project, required this.isNotLast});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            project.title ?? "",
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          Text(
            project.description ?? "",
            style: const TextStyle(
              color: Colors.grey,
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          if (project.codeLink != null && project.codeLink?.isNotEmpty == true)
            ElevatedButton(
              onPressed: () {
                launchUrl(Uri.parse(project.codeLink ?? ""));
              },
              child: const Text("View"),
            ),
          if (isNotLast)
            Divider(
              color: Colors.grey[700],
            ),
        ],
      ),
    );
  }
}
