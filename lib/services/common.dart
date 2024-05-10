import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sanity_image_url/flutter_sanity_image_url.dart';
import 'package:portfolio/app_bloc/app_bloc.dart';

class CommonFunctions {
  static ImageUrlBuilder urlFor(BuildContext context, asset) {
    return ImageUrlBuilder(context.read<AppBloc>().sanityClient).image(asset);
  }
}
