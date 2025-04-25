import 'package:flutter/material.dart';
import 'package:niemanswebsite/link_box.dart';

import 'custom_text.dart';

class ContactMe extends StatefulWidget {
  const ContactMe({Key? key}) : super(key: key);

  @override
  _ContactMeState createState() => _ContactMeState();
}

class _ContactMeState extends State<ContactMe> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;

    Widget imageWidget(double scale) {
      return AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: EdgeInsets.only(
            top: isHover ? height * 0.005 : height * 0.01,
            bottom: !isHover ? height * 0.005 : height * 0.01),
        child: InkWell(
          onTap: () {},
          onHover: (bool value) {
            setState(() {
              isHover = value;
            });
          },
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          focusColor: Colors.transparent,
          highlightColor: Colors.transparent,
          child:
              Image.asset('assets/just-nieman-logo-inverted.png', scale: scale),
        ),
      );
    }

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 1000) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 50),
              child: Column(
                children: [
                  imageWidget(10),
                  CustomText(
                      text: 'CONTACT',
                      fontSize: 28,
                      color: Theme.of(context).primaryColorLight),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: CustomText(
                        text: 'Feel free to get in touch',
                        fontSize: 18,
                        color: Theme.of(context)
                            .primaryColorLight
                            .withOpacity(0.7)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      bottom: 5.0,
                      top: 3.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomText(
                            text: 'Asheville, NC',
                            fontSize: 18,
                            color: Theme.of(context).primaryColorLight),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const LinkBox(
                              icon: Icons.email,
                              text: 'EMAIL ME',
                              url: 'mailto:contact@niemans.website',
                            ),
                            const LinkBox(
                              icon: Icons.camera_alt,
                              image: AssetImage("assets/instagram.webp"),
                              text: '@JUSTNIEMAN ON INSTA',
                              url: 'https://instagram.com/justnieman/',
                            ),
                          ],
                        ),
                  ),
                ],
              ),
            );
          } else {
            return Padding(
              padding: EdgeInsets.all(50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      imageWidget(10),
                      const SizedBox(width: 20),
                      SizedBox(
                        width: width / 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(
                                text: 'CONTACT',
                                fontSize: 35,
                                color: Theme.of(context).primaryColorLight),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 8.0),
                              child: CustomText(
                                  text: 'Feel free to get in touch',
                                  fontSize: 18,
                                  color: Theme.of(context)
                                      .primaryColorLight
                                      .withOpacity(0.7)),
                            ),
                            //MyBio(fontSize: 15),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Row(
                                children: [
                                  // if (data[0] != '')
                                  //   Image.asset(
                                  //       currentTheme.currentTheme ==
                                  //               ThemeMode.dark
                                  //           ? 'assets/contact_me/constant/location-dark.png'
                                  //           : 'assets/contact_me/constant/location.png',
                                  //       scale: 4)
                                  // else
                                  //   const Center(),
                                  CustomText(
                                      text: 'Asheville, NC',
                                      fontSize: 18,
                                      color:
                                          Theme.of(context).primaryColorLight),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: width / 5,
                        height: height / 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const LinkBox(
                              icon: Icons.email,
                              text: 'EMAIL ME',
                              url: 'mailto:contact@niemans.website',
                            ),
                            const LinkBox(
                              icon: Icons.camera_alt,
                              image: AssetImage("assets/instagram.webp"),
                              text: '@JUSTNIEMAN ON INSTA',
                              url: 'https://instagram.com/justnieman/',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          }
        }),
        Padding(
          padding: const EdgeInsets.only(bottom: 3.0),
          child: Column(
            children: [
              CustomText(
                  text: 'Made with ❤️',
                  fontSize: 10,
                  color: Theme.of(context).primaryColorLight)
            ],
          ),
        ),
      ],
    );
  }
}
