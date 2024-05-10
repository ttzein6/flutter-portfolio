import 'package:flutter/material.dart';
import 'package:portfolio/services/colors.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      margin: const EdgeInsets.only(bottom: 20),
      constraints: const BoxConstraints(maxWidth: 700, minWidth: 400),
      decoration: BoxDecoration(
        color: AppColors.bgColor,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const FlutterLogo(
            size: 14,
          ),
          Text(
            "Proudly made with Flutter <3  Tamer \u00a9${DateTime.now().year}",
            style: const TextStyle(color: Colors.white, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
