// ignore_for_file: empty_catches

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sanity/flutter_sanity.dart';

import 'package:portfolio/models/abouts_model.dart';
import 'package:portfolio/models/experiences_model.dart';
import 'package:portfolio/models/profile_config.dart';
import 'package:portfolio/models/project_model.dart';
import 'package:portfolio/models/skills_model.dart';

part 'app_event.dart';
part 'app_state.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  static const String sanityToken = String.fromEnvironment('SANITY_API_KEY');
  SanityClient sanityClient = SanityClient(
    projectId: "your-project-id",
    dataset: "production",
    useCdn: true,
    token: sanityToken,
  );
  String sanityUrl = "your-sanity-url";

  ProfileConfig? profileConfig;
  List<Abouts>? abouts;
  List<Experiences>? experiences;
  List<Skills>? skills;
  List<Project>? projects;

  AppBloc() : super(AppInitial()) {
    on<GetProfileConfig>((event, emit) async {
      emit(AppLoading());
      await Future.wait([
        sanityClient.fetch('*[_type == "profileConfig"][0]').then((value) {
          profileConfig = ProfileConfig.fromJson(value ?? {});
        }).catchError((e) {}),
        sanityClient
            .fetch('*[_type == "cv"][0]{"cvURL":cv.asset->url}')
            .then((value) {
          try {
            profileConfig?.cvUrl = value["cvURL"];
          } catch (e) {}
        }),
        sanityClient
            .fetch('*[_type == "profileConfig"][0]{"imgURL":imgUrl.asset->url}')
            .then((value) {
          try {
            profileConfig?.imgUrl?.imageUrl = value["imgURL"];
          } catch (e) {}
        }),
        sanityClient.fetch('*[_type == "abouts"]').then((v) {
          var value = v ?? {};
          try {
            abouts = List.generate(value.length,
                (index) => Abouts.fromJson(value.elementAt(index)));
          } catch (e) {}
        }),
        sanityClient.fetch('*[_type == "works"]').then((v) {
          var value = v ?? {};
          try {
            projects = List.generate(value.length,
                (index) => Project.fromJson(value.elementAt(index)));
          } catch (e) {}
        }),
        sanityClient.fetch('*[_type == "experiences"]').then((v) {
          var value = v ?? {};
          try {
            experiences = List.generate(value.length,
                (index) => Experiences.fromJson(value.elementAt(index)));
          } catch (e) {}
        }),
        sanityClient.fetch('*[_type == "skills"]').then((v) {
          var value = v ?? {};
          try {
            skills = List.generate(value.length,
                (index) => Skills.fromJson(value.elementAt(index)));
          } catch (e) {}
        }),
      ]).whenComplete(() {
        emit(AppLoaded(
          abouts: abouts,
          skills: skills,
          experiences: experiences,
          profileConfig: profileConfig,
          projects: projects,
        ));
      });
    });
  }
}
