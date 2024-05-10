import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio/app_bloc/app_bloc.dart';
import 'package:portfolio/services/colors.dart';
import 'package:url_launcher/url_launcher.dart';

class Contact extends StatelessWidget {
  Contact({super.key});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  bool isSending = false;
  @override
  Widget build(BuildContext context) {
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
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Contact",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              const Socials(),
              const SizedBox(height: 15),
              StatefulBuilder(builder: (context, setBuilderState) {
                return Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    key: formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        TextFormField(
                          readOnly: isSending,
                          controller: nameController,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your name';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              labelText: "Name",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                          style: const TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 15),
                        TextFormField(
                          readOnly: isSending,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return null;
                            }
                            return value.isValidEmail()
                                ? null
                                : "Enter a valid email address";
                          },
                          keyboardType: TextInputType.emailAddress,
                          controller: emailController,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                              labelText: "Email (optional)",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                        const SizedBox(height: 15),
                        SizedBox(
                          height: 100,
                          child: TextFormField(
                            readOnly: isSending,
                            controller: messageController,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Message is empty';
                              }
                              return null;
                            },
                            style: const TextStyle(color: Colors.white),
                            expands: true,
                            minLines: null,
                            maxLines: null,
                            decoration: InputDecoration(
                                labelText: "Message",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                )),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            ElevatedButton(
                                style: const ButtonStyle(
                                    backgroundColor: MaterialStatePropertyAll(
                                        Color.fromARGB(255, 129, 181, 245))),
                                onPressed: () async {
                                  if (formKey.currentState!.validate()) {
                                    setBuilderState(() {
                                      isSending = true;
                                    });
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                          content: Text('Sending Message...')),
                                    );
                                    Map<String, dynamic> contactForm = {
                                      "_type": 'contact',
                                      "name": nameController.text,
                                      "email": emailController.text,
                                      "message": messageController.text,
                                    };
                                    // context.read<AppBloc>().sanityClient.
                                    await Dio()
                                        .post(context.read<AppBloc>().sanityUrl,
                                            data: {
                                              "mutations": [
                                                {
                                                  "create": contactForm,
                                                }
                                              ]
                                            },
                                            options: Options(headers: {
                                              "Authorization":
                                                  "Bearer ${AppBloc.sanityToken}",
                                            }))
                                        .then((value) {
                                      setBuilderState(() {
                                        isSending = false;
                                        nameController.clear();
                                        emailController.clear();
                                        messageController.clear();
                                      });
                                      // formKey.currentState!.reset();
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                            content: Text('Message sent!')),
                                      );
                                    }).catchError((e) {
                                      setBuilderState(() {
                                        isSending = false;
                                      });
                                    });
                                  }
                                },
                                child: isSending
                                    ? const Center(
                                        child: SizedBox(
                                          width: 20,
                                          height: 20,
                                          child: CircularProgressIndicator(
                                              color: Colors.white),
                                        ),
                                      )
                                    : const Text(
                                        "Submit",
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.bold),
                                      )),
                          ],
                        )
                      ],
                    ));
              })
            ],
          ),
        );
      },
    );
  }
}

class Socials extends StatelessWidget {
  const Socials({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 10,
      runSpacing: 10,
      alignment: WrapAlignment.center,
      runAlignment: WrapAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () {
            launchUrl(Uri.parse("tel:+96170717603"));
          },
          child: const FaIcon(FontAwesomeIcons.phone),
        ),
        ElevatedButton(
          onPressed: () {
            launchUrl(Uri.parse("mailto:ttzein6@gmail.com"));
          },
          child: const FaIcon(FontAwesomeIcons.envelope),
        ),
        ElevatedButton(
          onPressed: () {
            launchUrl(Uri.parse("https://www.facebook.com/tamer.elzein/"));
          },
          child: const FaIcon(FontAwesomeIcons.facebook),
        ),
        ElevatedButton(
          onPressed: () {
            launchUrl(Uri.parse("https://www.instagram.com/tamerlzein/"));
          },
          child: const FaIcon(FontAwesomeIcons.instagram),
        ),
        ElevatedButton(
          onPressed: () {
            launchUrl(Uri.parse("https://www.linkedin.com/in/tamerelzein/"));
          },
          child: const FaIcon(FontAwesomeIcons.linkedin),
        ),
        ElevatedButton(
          onPressed: () {
            launchUrl(
              Uri.parse('https://github.com/ttzein6'),
            );
          },
          child: const FaIcon(FontAwesomeIcons.github),
        ),
        ElevatedButton(
          onPressed: () {
            launchUrl(
              Uri.parse('https://twitter.com/tamer4_'),
            );
          },
          child: const FaIcon(FontAwesomeIcons.xTwitter),
        ),
      ],
    );
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(this);
  }
}
