import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:niemanswebsite/contact_me.dart';
import 'package:niemanswebsite/introduction.dart';
import 'package:niemanswebsite/music_release.dart';

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
                      Align(
                        alignment: Alignment.centerRight,
                        child: Image.asset(
                          'assets/just-nieman-logo-wide-inverted.png',
                          width: 200, // adjust to fit your layout
                          fit: BoxFit.contain,
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
                            ['assets/gallery/1.jpg', 'Memories at The Getaway'],
                            ['assets/gallery/2.jpg', 'Afters?'],
                            [
                              'assets/gallery/3.jpg',
                              'Loading up a track that will be just right.'
                            ],
                            [
                              'assets/gallery/4.jpg',
                              'Times at Water Street (White Rabbit)'
                            ],
                            ['assets/gallery/5.jpg', 'Memories at The Getaway'],
                            //['assets/gallery/6.jpg', 'Me n the Pluto Crew'],
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
                      const SizedBox(
                        height: 10.0,
                      ),
                      Center(
                        child: SizedBox(
                          width: 300,
                          child: MusicRelease(
                            title: 'PRESAVE "IT\'S NOT THAT DEEP"',
                            image: const AssetImage(
                                "assets/its-not-that-deep.png"),
                            listenUrl:
                                'https://distrokid.com/hyperfollow/justnieman/its-not-that-deep',
                            isMobile: true,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Center(
                        child: SizedBox(
                          width: 300,
                          child: MusicRelease(
                            title: 'STREAM "MY MUSIC"',
                            image: const AssetImage("assets/my-music.webp"),
                            listenUrl:
                                'https://distrokid.com/hyperfollow/justnieman/my-music',
                            isMobile: true,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Center(
                        child: SizedBox(
                          width: 300,
                          child: MusicRelease(
                            title: 'STREAM "LIVES"',
                            image: const AssetImage("assets/lives.webp"),
                            listenUrl:
                                'https://distrokid.com/hyperfollow/justnieman/lives',
                            isMobile: true,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10.0,
                      ),
                      Center(
                        child: SizedBox(
                          width: 300,
                          child: MusicRelease(
                            title: 'STREAM "PERSONAL"',
                            image: const AssetImage("assets/personal.webp"),
                            listenUrl:
                                'https://distrokid.com/hyperfollow/justnieman/personal',
                            isMobile: true,
                          ),
                        ),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.all(height * 0.04),
                      //   child: Center(
                      //     child: Text(
                      //       "UPCOMING SHOWS",
                      //       style: TextStyle(
                      //         fontSize:
                      //             28.0, // Adjust as per your design requirement
                      //         fontWeight: FontWeight.w700,
                      //         color: Theme.of(context).colorScheme.onPrimary,
                      //         letterSpacing: 2.0,
                      //         fontFamily: 'SourceCodePro',
                      //         shadows: [
                      //           Shadow(
                      //             offset: const Offset(2.0, 2.0),
                      //             blurRadius: 3.0,
                      //             color: const Color.fromARGB(29, 165, 0, 143)
                      //                 .withOpacity(0.3),
                      //           ),
                      //         ],
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      // const EventCard(
                      //   title: "TAURUS BIRTHDAY BASH",
                      //   imageUrl: 'assets/getaway-may-18th_half-min.png',
                      //   date: '5/13/2024',
                      //   location: 'THE GETAWAY ASHEVILLE, NC',
                      // ),
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
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Image.asset(
                                          'assets/just-nieman-logo-wide-inverted.png',
                                          width:
                                              500, // adjust to fit your layout
                                          fit: BoxFit.contain,
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
                                    [
                                      'assets/gallery/1.jpg',
                                      'Memories at The Getaway'
                                    ],
                                    ['assets/gallery/2.jpg', 'Afters?'],
                                    [
                                      'assets/gallery/3.jpg',
                                      'Loading up a track that will be just right.'
                                    ],
                                    [
                                      'assets/gallery/4.jpg',
                                      'Times at Water Street (White Rabbit)'
                                    ],
                                    [
                                      'assets/gallery/5.jpg',
                                      'Memories at The Getaway'
                                    ],
                                    // [
                                    //   'assets/gallery/6.jpg',
                                    //   'Me n the Pluto Crew'
                                    // ],
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
                        GridView.count(
                          crossAxisCount: 4,
                          crossAxisSpacing: 16,
                          mainAxisSpacing: 16,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          childAspectRatio: 0.7, // Tweak this to your liking
                          children: const [
                            MusicRelease(
                              title: '"IT\'S NOT THAT DEEP"',
                              image: AssetImage("assets/its-not-that-deep.png"),
                              listenUrl:
                                  'https://distrokid.com/hyperfollow/justnieman/its-not-that-deep',
                              isMobile: false,
                            ),
                            MusicRelease(
                              title: '"MY MUSIC"',
                              image: AssetImage("assets/my-music.webp"),
                              listenUrl:
                                  'https://distrokid.com/hyperfollow/justnieman/my-music',
                              isMobile: false,
                            ),
                            MusicRelease(
                              title: '"LIVES"',
                              image: AssetImage("assets/lives.webp"),
                              listenUrl:
                                  'https://distrokid.com/hyperfollow/justnieman/lives',
                              isMobile: false,
                            ),
                            MusicRelease(
                              title: '"PERSONAL"',
                              image: AssetImage("assets/personal.webp"),
                              listenUrl:
                                  'https://distrokid.com/hyperfollow/justnieman/personal',
                              isMobile: false,
                            ),
                          ],
                        ),
                        // Padding(
                        //   padding: EdgeInsets.all(height * 0.04),
                        //   child: Center(
                        //     child: Text(
                        //       "UPCOMING SHOWS",
                        //       style: TextStyle(
                        //         fontSize: 28.0,
                        //         fontWeight: FontWeight.w700,
                        //         color: Theme.of(context).colorScheme.onPrimary,
                        //         letterSpacing: 2.0,
                        //         fontFamily: 'SourceCodePro',
                        //         shadows: [
                        //           Shadow(
                        //             offset: const Offset(2.0, 2.0),
                        //             blurRadius: 3.0,
                        //             color: const Color.fromARGB(29, 165, 0, 143)
                        //                 .withOpacity(0.3),
                        //           ),
                        //         ],
                        //       ),
                        //     ),
                        //   ),
                        // ),
                        // const SizedBox(
                        //   child: Flex(
                        //     crossAxisAlignment: CrossAxisAlignment.start,
                        //     direction: Axis.horizontal,
                        //     children: [
                        //       Expanded(
                        //         child: EventCard(
                        //           title: "TAURUS BIRTHDAY BASH",
                        //           imageUrl:
                        //               'assets/getaway-may-18th_half-min.png',
                        //           date: '4/20/2024',
                        //           location: "THE GETAWAY ASHEVILLE, NC",
                        //         ),
                        //       ),
                        //     ],
                        //   ),
                        // ),
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
