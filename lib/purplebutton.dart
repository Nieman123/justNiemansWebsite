import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PurpleButton extends StatelessWidget {
  final Uri url;

  PurpleButton({super.key, required String urlString})
      : url = Uri.parse(urlString);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.purple, // Set the button color to purple
      ),
      onPressed: () async {
        if (await canLaunchUrl(url)) {
          await launchUrl(url);
        } else {
          throw 'Could not launch $url';
        }
      },
      child: Text('Listen on DistroKid'),
    );
  }
}
