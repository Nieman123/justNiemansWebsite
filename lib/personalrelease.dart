import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PersonalRelease extends StatelessWidget {
  final bool isMobile;
  final double fontSize;

  PersonalRelease({
    Key? key,
    required this.fontSize,
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
        color: Colors.white.withOpacity(0.2),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '"PERSONAL" OUT NOW',
                style: TextStyle(
                    fontFamily: 'SourceCodePro',
                    letterSpacing: 2.5,
                    color: Theme.of(context).primaryColorLight,
                    fontSize: fontSize * 1.5),
              ),
              const SizedBox(height: 10.0),
              Flexible(
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Image.asset('assets/personal.webp'),
                ),
              ),
              const SizedBox(height: 10.0),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  foregroundColor: Colors.purple,
                ),
                onPressed: () async {
                  var url = Uri.parse(
                      "https://distrokid.com/hyperfollow/justnieman/personal");
                  if (await canLaunchUrl(url)) {
                    await launchUrl(url);
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: const Text('CLICK TO LISTEN'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
