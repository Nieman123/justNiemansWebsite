import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:foil/foil.dart';
import 'package:niemanswebsite/eventcard.dart';
import 'package:niemanswebsite/livesrelease.dart';
import 'package:niemanswebsite/contact_me.dart';
import 'package:niemanswebsite/introduction.dart';
import 'package:niemanswebsite/music_release.dart';
import 'package:niemanswebsite/personalrelease.dart';

import 'about.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.microtask(() {
        SystemChrome.setApplicationSwitcherDescription(
            ApplicationSwitcherDescription(
          label: "Just Nieman's Website",
          primaryColor: Colors.black.value,
        ));
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(bottom: height * 0.01),
      child: SizedBox(
        child: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth < 1000) {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: width * 0.024),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(
                      50, 0, 0, 0), // Set the background color to black
                  borderRadius: BorderRadius.circular(
                      8.0), // Set the border radius for rounded corners
                ),
                child: Padding(
                  padding: EdgeInsets.all(height * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Roll(
                        crinkle: Crinkle.vivacious,
                        child: Foil(
                          gradient: Foils.oilslick,
                          opacity: 0.6,
                          scalar: Scalar.identity,
                          speed: Duration(seconds: 200),
                          duration: Duration(milliseconds: 100000),
                          child: Text(
                            "Just Nieman",
                            textScaleFactor: 4.5,
                            style: TextStyle(
                              fontFamily: 'FjallaOne',
                              // letterSpacing: 10.5,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: height * 0.07),
                        child: const Introduction(
                            word: 'Multi-genre EDM producer and DJ',
                            textScaleFactor: 1.5),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Center(
                        child: CarouselSlider(
                          options: CarouselOptions(
                            autoPlay: true,
                            aspectRatio: 2.0,
                            enlargeCenterPage: true,
                            enlargeStrategy: CenterPageEnlargeStrategy.height,
                          ),
                          items: [
                            ['assets/gallery/4.jpg', 'The Weekends'],
                            ['assets/gallery/6.jpg', 'With my friend Ronie'],
                            ['assets/gallery/2.webp', 'At Static Age Loft'],
                          ].map((i) {
                            return Builder(
                              builder: (BuildContext context) {
                                return Stack(
                                  children: [
                                    Container(
                                        width:
                                            MediaQuery.of(context).size.width,
                                        margin: const EdgeInsets.symmetric(
                                            horizontal: 5.0),
                                        decoration: BoxDecoration(
                                          color: Colors.amber,
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Image.asset(i[0],
                                            fit: BoxFit.cover)),
                                    Align(
                                      alignment: const Alignment(
                                          0.0, 0.9), // Bottom center
                                      child: Padding(
                                        padding: const EdgeInsets.all(10.0),
                                        child: Text(
                                          i[1],
                                          style: const TextStyle(
                                            color: Colors.white,
                                            fontSize: 12,
                                            fontWeight: FontWeight.w100,
                                            backgroundColor: Colors.black54,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            );
                          }).toList(),
                        ),
                      ),
                      About(fontSize: 15),
                      Padding(
                        padding: EdgeInsets.all(height * 0.04),
                        child: Center(
                          child: Text(
                            "NEWEST RELEASES",
                            style: TextStyle(
                              fontSize:
                                  28.0, // Adjust as per your design requirement
                              fontWeight: FontWeight.w700,
                              color: Theme.of(context).colorScheme.onPrimary,
                              letterSpacing: 2.0,
                              fontFamily: 'SourceCodePro',
                              shadows: [
                                Shadow(
                                  offset: const Offset(2.0, 2.0),
                                  blurRadius: 3.0,
                                  color: const Color.fromARGB(29, 165, 0, 143)
                                      .withOpacity(0.3),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      MusicRelease(
                        title: 'STREAM "MY MUSIC"',
                        image: const AssetImage("assets/my-music.webp"),
                        listenUrl:
                            'https://distrokid.com/hyperfollow/justnieman/my-music',
                        isMobile: false,
                      ),
                      MusicRelease(
                        title: 'STREAM "LIVES"',
                        image: const AssetImage("assets/lives.webp"),
                        listenUrl:
                            'https://distrokid.com/hyperfollow/justnieman/lives',
                        isMobile: false,
                      ),
                      MusicRelease(
                        title: 'STREAM "PERSONAL"',
                        image: const AssetImage("assets/personal.webp"),
                        listenUrl:
                            'https://distrokid.com/hyperfollow/justnieman/personal',
                        isMobile: false,
                      ),
                      Padding(
                        padding: EdgeInsets.all(height * 0.04),
                        child: Center(
                          child: Text(
                            "UPCOMING SHOWS",
                            style: TextStyle(
                              fontSize:
                                  28.0, // Adjust as per your design requirement
                              fontWeight: FontWeight.w700,
                              color: Theme.of(context).colorScheme.onPrimary,
                              letterSpacing: 2.0,
                              fontFamily: 'SourceCodePro',
                              shadows: [
                                Shadow(
                                  offset: const Offset(2.0, 2.0),
                                  blurRadius: 3.0,
                                  color: const Color.fromARGB(29, 165, 0, 143)
                                      .withOpacity(0.3),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      const EventCard(
                        title: "TAURUS BIRTHDAY BASH",
                        imageUrl: 'assets/getaway-may-18th_half-min.png',
                        date: '5/13/2024',
                        location: 'THE GETAWAY ASHEVILLE, NC',
                      ),
                    ],
                  ),
                ),
              ),
            );
          } else {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(height * 0.07),
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(
                        50, 0, 0, 0), // Set the background color to black
                    borderRadius: BorderRadius.circular(
                        8.0), // Set the border radius for rounded corners
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: width * 0.032),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: width * 0.032),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(height * 0.04),
                                      child: Roll(
                                        crinkle: Crinkle.twinkling,
                                        child: Foil(
                                          gradient: Foils.linearRainbow
                                              .copyWith(
                                                  begin: Alignment.topLeft,
                                                  end: Alignment.bottomRight,
                                                  colors: List.from(
                                                      Foils.oilslick.colors)),
                                          opacity: 0.6,
                                          scalar: Scalar.identity,
                                          speed: const Duration(seconds: 200),
                                          duration:
                                              const Duration(seconds: 100),
                                          child: const Text(
                                            "Just Nieman",
                                            textScaleFactor: 4.5,
                                            style: TextStyle(
                                              fontFamily: 'FjallaOne',
                                              fontWeight: FontWeight.w500,
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const Introduction(
                                        word: 'Multi-genre EDM producer and DJ',
                                        textScaleFactor: 1.5),
                                  ],
                                ),
                              ),
                            ),
                            Expanded(
                              child: Center(
                                child: CarouselSlider(
                                  options: CarouselOptions(
                                      autoPlay: true,
                                      aspectRatio: 2.0,
                                      enlargeCenterPage: true,
                                      enlargeStrategy:
                                          CenterPageEnlargeStrategy.height),
                                  items: [
                                    ['assets/gallery/4.jpg', 'The Weekends'],
                                    [
                                      'assets/gallery/6.jpg',
                                      'With my friend Ronie'
                                    ],
                                    [
                                      'assets/gallery/2.webp',
                                      'At Static Age Loft'
                                    ],
                                  ].map((i) {
                                    return Builder(
                                      builder: (BuildContext context) {
                                        return Stack(
                                          children: [
                                            Container(
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 5.0),
                                                decoration: BoxDecoration(
                                                  color: Colors.amber,
                                                  borderRadius:
                                                      BorderRadius.circular(10),
                                                ),
                                                child: Image.asset(i[0],
                                                    fit: BoxFit.cover)),
                                            Align(
                                              alignment: const Alignment(
                                                  0.0, 0.9), // Bottom center
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.all(10.0),
                                                child: Text(
                                                  i[1],
                                                  style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontWeight: FontWeight.w100,
                                                    backgroundColor:
                                                        Colors.black54,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15.0,
                        ),
                        About(fontSize: 15),
                        Padding(
                          padding: EdgeInsets.all(height * 0.04),
                          child: Center(
                            child: Text(
                              "NEWEST RELEASES",
                              style: TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.w700,
                                color: Theme.of(context).colorScheme.onPrimary,
                                letterSpacing: 2.0,
                                fontFamily: 'SourceCodePro',
                                shadows: [
                                  Shadow(
                                    offset: const Offset(2.0, 2.0),
                                    blurRadius: 3.0,
                                    color: const Color.fromARGB(29, 165, 0, 143)
                                        .withOpacity(0.3),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 500.0,
                          child: Flex(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            direction: Axis.horizontal,
                            children: [
                              Expanded(
                                  child: MusicRelease(
                                title: 'STREAM "MY MUSIC"',
                                image: const AssetImage("assets/my-music.webp"),
                                listenUrl:
                                    'https://distrokid.com/hyperfollow/justnieman/my-music',
                                isMobile: false,
                              )),
                              Expanded(
                                  child: MusicRelease(
                                title: 'STREAM "LIVES"',
                                image: const AssetImage("assets/lives.webp"),
                                listenUrl:
                                    'https://distrokid.com/hyperfollow/justnieman/lives',
                                isMobile: false,
                              )),
                              Expanded(
                                  child: MusicRelease(
                                title: 'STREAM "PERSONAL"',
                                image: const AssetImage("assets/personal.webp"),
                                listenUrl:
                                    'https://distrokid.com/hyperfollow/justnieman/personal',
                                isMobile: false,
                              )),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(height * 0.04),
                          child: Center(
                            child: Text(
                              "UPCOMING SHOWS",
                              style: TextStyle(
                                fontSize: 28.0,
                                fontWeight: FontWeight.w700,
                                color: Theme.of(context).colorScheme.onPrimary,
                                letterSpacing: 2.0,
                                fontFamily: 'SourceCodePro',
                                shadows: [
                                  Shadow(
                                    offset: const Offset(2.0, 2.0),
                                    blurRadius: 3.0,
                                    color: const Color.fromARGB(29, 165, 0, 143)
                                        .withOpacity(0.3),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          child: Flex(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            direction: Axis.horizontal,
                            children: [
                              Expanded(
                                child: EventCard(
                                  title: "TAURUS BIRTHDAY BASH",
                                  imageUrl:
                                      'assets/getaway-may-18th_half-min.png',
                                  date: '4/20/2024',
                                  location: "THE GETAWAY ASHEVILLE, NC",
                                ),
                              ),
                            ],
                          ),
                        ),
                        const ContactMe()
                      ],
                    ),
                  ),
                ),
              ),
            );
          }
        }),
      ),
    );
  }
}
