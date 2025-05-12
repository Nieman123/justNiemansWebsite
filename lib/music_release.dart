import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

class MusicRelease extends StatelessWidget {
  final String title; // Title of the release
  final ImageProvider image; // Image provider for flexibility
  final String listenUrl; // URL to listen to the release
  final bool isMobile;
  final double fontSize; // Made fontSize optional with a default value

  const MusicRelease({
    super.key,
    required this.title,
    required this.image, // Now accepts any ImageProvider
    required this.listenUrl,
    this.fontSize = 14.0, // Default font size if not provided
    required this.isMobile,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[900],
        borderRadius: BorderRadius.circular(20),
      ),
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          maxHeight: 300,
          minHeight: 260,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: isMobile ? 16 : 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 10),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12.0),
                  child: Image(
                    image: image,
                    fit: BoxFit
                        .contain, // or .cover if you want it to fill the space entirely
                  ),
                ),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: () async {
                  await FirebaseAnalytics.instance.logEvent(
                    name: 'music_release_click',
                    parameters: {'title': title},
                  );
                  launchUrl(Uri.parse(listenUrl));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  foregroundColor: Colors.purple[900],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                ),
                child: const Text("CLICK TO LISTEN"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
