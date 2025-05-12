import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'dart:math';

class LinkBox extends StatelessWidget {
  final IconData icon;
  final String text;
  final String url;
  final ImageProvider? image;
  final bool isImageCircular;
  final EdgeInsetsGeometry margin;
  final EdgeInsetsGeometry padding;
  final double? maxWidth;

  const LinkBox({
    Key? key,
    required this.icon,
    required this.text,
    required this.url,
    this.image,
    this.isImageCircular = false,
    this.margin = const EdgeInsets.all(8),
    this.padding = const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
    this.maxWidth,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double buttonWidth = min(MediaQuery.of(context).size.width * 0.75, maxWidth ?? 300);
    final double iconHeight = 48;

    return InkWell(
      onTap: () async {
        await FirebaseAnalytics.instance.logEvent(
          name: 'link_box_tap',
          parameters: {'text': text},
        );
        final Uri uri = Uri.parse(url);
        if (await canLaunchUrl(uri)) {
          launchUrl(uri);
        }
      },
      child: Container(
        width: buttonWidth,
        margin: margin,
        padding: padding,
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
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (image != null)
              ClipRRect(
                borderRadius: BorderRadius.circular(isImageCircular ? 1000 : 10),
                child: Image(
                  image: image!,
                  height: iconHeight,
                  width: iconHeight,
                  fit: BoxFit.cover,
                ),
              )
            else
              Icon(icon, size: iconHeight),
            const SizedBox(height: 8),
            Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}