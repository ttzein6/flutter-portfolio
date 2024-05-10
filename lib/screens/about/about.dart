import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sanity_image_url/flutter_sanity_image_url.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/app_bloc/app_bloc.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.shortestSide < 600;

    return Align(
      alignment: Alignment.center,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            "I Know That Good Design\nMeans Good Business",
            textAlign: TextAlign.center,
            style: GoogleFonts.barrio(
                fontSize: (isMobile ? 25 : 40) *
                    MediaQuery.of(context).textScaleFactor,
                color: Colors.white),
          ),
          const SizedBox(
            height: 50,
          ),
          BlocBuilder<AppBloc, AppState>(builder: (context, state) {
            if (state is AppLoaded) {
              ImageUrlBuilder urlFor(BuildContext context, asset) {
                return ImageUrlBuilder(context.read<AppBloc>().sanityClient)
                    .image(asset);
              }

              List<Widget> children = [];
              state.abouts?.forEach((about) {
                children.add(Container(
                  padding: isMobile
                      ? const EdgeInsets.only(bottom: 20)
                      : const EdgeInsets.only(right: 30),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.network(
                          urlFor(
                            context,
                            SanityImage.fromJson(about.imgUrl!.toJson()),
                          ).size(200, 200).url(),
                          width: isMobile ? 100 : 150,
                          height: isMobile ? 100 : 150,
                        ),
                      ),
                      SizedBox(
                        height: isMobile ? 15 : 30,
                      ),
                      Text(
                        about.title!,
                        style: const TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ));
              });
              if (isMobile) {
                return Expanded(
                  child: ListView(
                    physics: const AlwaysScrollableScrollPhysics(),
                    padding: const EdgeInsets.all(20),
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: children,
                  ),
                );
              }
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: children,
              );
            } else {
              return const SizedBox();
            }
          }),
        ],
      ),
    );
  }
}
