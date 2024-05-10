import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:portfolio/app_bloc/app_bloc.dart';
import 'package:portfolio/services/colors.dart';

class EducationScreen extends StatelessWidget {
  const EducationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        state as AppLoaded;
        return Container(
          constraints: const BoxConstraints(maxWidth: 700, minWidth: 400),
          margin: const EdgeInsets.only(top: 10, bottom: 10),
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
                "Education",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              EducationWidget(),
            ],
          ),
        );
      },
    );
  }
}

class EducationWidget extends StatelessWidget {
  const EducationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: 20,
      ),
      child: BlocBuilder<AppBloc, AppState>(
        builder: (context, state) {
          if (state is AppLoaded) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.network(
                  "https://media.licdn.com/dms/image/C4E0BAQHFHfV_b_F65w/company-logo_100_100/0/1631361521604/beirut_arab_university_logo?e=1715817600&v=beta&t=LMZYyuPUWh0SjK42zcucUp8jqyFtKZLqH-M3xHeBIZ4",
                  width: 50,
                  height: 50,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "BE - Computer Engineering",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      "Beirut Arab University",
                      softWrap: true,
                      textAlign: TextAlign.start,
                      maxLines: 3,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    Text(
                      "2018 - Jun 2022",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                )
              ],
            );
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
