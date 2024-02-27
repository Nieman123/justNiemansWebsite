import 'package:flutter/material.dart';
import 'package:niemanswebsite/main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:math';

class LinkBox extends StatelessWidget {
  final IconData icon;
  final String text;
  final String url;
  final ImageProvider? image; // Optional image parameter

  const LinkBox({
    Key? key,
    required this.icon,
    required this.text,
    required this.url,
    this.image, // Initialize the optional image parameter
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Determine the fixed width based on the screen size or a constant value
    double buttonWidth = min(MediaQuery.of(context).size.width * 0.8,
        800.0); // 80% of screen width or max 800

    return InkWell(
      onTap: () async {
        var uri = Uri.parse(this.url);
        if (await canLaunchUrl(uri)) {
          launchUrl(uri);
          // Log the event with Firebase Analytics
          await analytics.logEvent(
            name: 'link_clicked',
            parameters: {
              'icon': icon
                  .toString(), // Log the icon or some identifier of the link
              'text': text, // The text associated with the link
              'url': url, // The URL that was clicked
            },
          );
        }
      },
      child: Container(
        width: buttonWidth, // Fixed width for all buttons
        height: 120.0,
        margin: const EdgeInsets.all(8),
        padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 10), // Increase padding to make buttons taller
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 5,
              offset: const Offset(0, 3),
            ),
          ],
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (image != null) // Only display the image if it is provided
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(5), // Adjust the radius as needed
                child: Container(
                  height: double
                      .infinity, // Expand the height to match the LinkBox height
                  child: Image(
                    image: image ?? const AssetImage('assets/personal.webp'),
                    fit: BoxFit
                        .cover, // Cover the area without distorting the aspect ratio
                  ),
                ),
              ),
            const SizedBox(
                width: 10), // Space between the icon/image and the text
            if (image == null) Icon(icon, size: 24),
            const SizedBox(width: 10), // Icon
            Text(
              text,
              style: const TextStyle(
                fontWeight: FontWeight.bold, // Makes text bold
              ),
            )
          ],
        ),
      ),
    );
  }
}
