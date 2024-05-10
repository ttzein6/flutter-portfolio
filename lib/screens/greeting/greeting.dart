import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sanity_image_url/flutter_sanity_image_url.dart';
import 'package:portfolio/app_bloc/app_bloc.dart';
import 'package:portfolio/services/colors.dart';
import 'package:portfolio/services/common.dart';
import 'package:url_launcher/url_launcher.dart';

class GreetingScreen extends StatelessWidget {
  const GreetingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // bool isMobile = MediaQuery.of(context).size.shortestSide < 600;
    return BlocBuilder<AppBloc, AppState>(
      builder: (context, state) {
        state as AppLoaded;
        return Container(
          constraints: const BoxConstraints(maxWidth: 700, minWidth: 400),
          margin: const EdgeInsets.only(top: 20, bottom: 10),
          decoration: BoxDecoration(
            color: AppColors.bgColor,
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
          child: Stack(
            children: [
              Container(
                height: 120,
                width: double.infinity,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    image: DecorationImage(
                        image: NetworkImage(
                          'data:image/jpeg;base64,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',
                        ),
                        fit: BoxFit.fitWidth)),
              ),
              ProfileImage(
                state: state,
              ),
            ],
          ),
        );
      },
    );
  }
}

class ProfileImage extends StatelessWidget {
  final AppLoaded state;
  const ProfileImage({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Animate(
            effects: const [
              SlideEffect(
                duration: Duration(milliseconds: 500),
                begin: Offset(-1, 0),
              )
            ],
            child: Container(
              width: 160,
              height: 160,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey[400],
                  image: DecorationImage(
                    image: NetworkImage(
                      CommonFunctions.urlFor(
                              context,
                              SanityImage.fromJson(
                                  state.profileConfig?.imgUrl?.toJson() ?? {}))
                          .url(),
                    ),
                  )),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Animate(
            effects: const [
              SlideEffect(
                duration: Duration(milliseconds: 500),
                begin: Offset(-1, 0),
              )
            ],
            child: const Text(
              "Tamer El Zein",
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: '',
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Animate(
            effects: const [
              SlideEffect(
                duration: Duration(milliseconds: 500),
                begin: Offset(-1, 0),
              )
            ],
            child: const Text(
              "Software Engineer | Flutter",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: '',
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Animate(
            effects: const [
              SlideEffect(
                duration: Duration(milliseconds: 500),
                begin: Offset(-1, 0),
              )
            ],
            child: const Text(
              "Ez Zaarouriye, Mount-Lebanon, Lebanon",
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 13,
                fontFamily: '',
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Animate(
            effects: const [
              FadeEffect(
                duration: Duration(milliseconds: 1200),
                begin: 0,
                end: 1,
              ),
            ],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                  onPressed: () {
                    launchUrl(
                        Uri.parse("https://www.linkedin.com/in/tamerelzein"));
                  },
                  style: const ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 129, 181, 245))),
                  child: const Text(
                    "Linked In",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    launchUrl(Uri.parse(state.profileConfig?.cvUrl ?? ""));
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.transparent),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        side: const BorderSide(
                            color: Color.fromARGB(255, 129, 181, 245)),
                        borderRadius: BorderRadius.circular(15),
                      ))),
                  child: const Text(
                    "CV",
                    style: TextStyle(
                      color: Color.fromARGB(255, 129, 181, 245),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    launchUrl(
                      Uri.parse('https://github.com/ttzein6'),
                    );
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          const MaterialStatePropertyAll(Colors.transparent),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        side: const BorderSide(
                            color: Color.fromARGB(255, 129, 181, 245)),
                        borderRadius: BorderRadius.circular(15),
                      ))),
                  child: const Text(
                    "Github",
                    style: TextStyle(
                      color: Color.fromARGB(255, 129, 181, 245),
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Animate(
            effects: const [
              SlideEffect(
                duration: Duration(milliseconds: 500),
                begin: Offset(0, 1),
              )
            ],
            child: const Text(
              "I'm Tamer, a software engineer and mobile developer with a passion for creating engaging experiences. I believe that great design is more than just pixels on a screen; it's about understanding users and telling stories through code. I love to experiment with new technologies and am constantly seeking out new challenges.",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
