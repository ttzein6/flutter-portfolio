part of 'app_bloc.dart';

abstract class AppState {}

class AppInitial extends AppState {}

class AppLoading extends AppState {}

class AppLoaded extends AppState {
  final ProfileConfig? profileConfig;
  final List<Abouts>? abouts;
  final List<Experiences>? experiences;
  final List<Skills>? skills;
  final List<Project>? projects;
  AppLoaded(
      {this.abouts,
      this.experiences,
      this.profileConfig,
      this.skills,
      this.projects});
}
