import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MusicRelease extends StatelessWidget {
  final String title; // Title of the release
  final ImageProvider image; // Image provider for flexibility
  final String listenUrl; // URL to listen to the release
  final bool isMobile;
  final double fontSize; // Made fontSize optional with a default value

  MusicRelease({
    Key? key,
    required this.title,
    required this.image, // Now accepts any ImageProvider
    required this.listenUrl,
    this.fontSize = 14.0, // Default font size if not provided
    required this.isMobile,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double cardWidth = screenWidth * 0.9;

    double maxWidth = 900.0;
    double containerWidth = cardWidth > maxWidth ? maxWidth : cardWidth;

    return Container(
      padding: const EdgeInsets.fromLTRB(12.0, 5.0, 12.0, 30.0),
      width: containerWidth,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        elevation: 5.0,
        color: Colors.white.withOpacity(0.2), // Transparent white background
        child: Padding(
          padding: const EdgeInsets.all(
              20.0), // Overall padding for the Card's content
          child: Column(
            mainAxisSize:
                MainAxisSize.min, // Make the column take up minimum space
            children: [
              Text(
                title.toUpperCase(), // Use the title passed to the widget
                style: TextStyle(
                  fontFamily: 'SourceCodePro',
                  letterSpacing: 2.5,
                  color: Theme.of(context).primaryColorLight,
                  fontSize: fontSize * 1.5,
                ),
              ),
              const SizedBox(height: 10.0),
              Flexible(
                // Make the image flexible
                child: FittedBox(
                  // Fit the image within the bounds
                  fit: BoxFit.contain,
                  child: Image(image: image), // Now using ImageProvider
                ),
              ),
              const SizedBox(height: 10.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple, // Set the button color to purple
                ),
                onPressed: () async {
                  var url =
                      Uri.parse(listenUrl); // Use the URL passed to the widget
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: const Text('CLICK TO LISTEN'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
