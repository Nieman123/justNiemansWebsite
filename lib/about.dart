import 'package:flutter/material.dart';

class About extends StatefulWidget {
  final double fontSize;

  About({Key? key, required this.fontSize}) : super(key: key);

  @override
  _AboutState createState() => _AboutState();
}

class _AboutState extends State<About> {
  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    // Splitting the about text into paragraphs
    List<String> paragraphs = gotAbout.trim().split('\n\n');

    return Padding(
      padding: const EdgeInsets.fromLTRB(12.0, 5.0, 12.0, 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(30.0),
            child: Text(
              // Displaying the first paragraph always and others only if expanded
              _isExpanded ? paragraphs.join('\n\n') : paragraphs.first,
              style: TextStyle(
                fontFamily: 'SourceCodePro',
                letterSpacing: 2.5,
                color: Theme.of(context).primaryColorLight,
                fontSize: widget.fontSize,
              ),
            ),
          ),
          if (paragraphs.length >
              1) // Show More button only if there are more paragraphs
            Center(
              child: TextButton(
                onPressed: () {
                  setState(() {
                    _isExpanded = !_isExpanded;
                  });
                },
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.purple, // Button background color
                ),
                child: Text(_isExpanded ? 'Show Less' : 'Show More'),
              ),
            ),
        ],
      ),
    );
  }

  final String gotAbout =
      '''Just Nieman is a multi-genre EDM producer and DJ based in Asheville, NC. Since stepping into the scene in 2013, he’s gone from throwing house parties to holding down club residencies and launching his own event production company, Pluto Events. His style blends community roots with club energy—curating sets that move both feet and hearts.

In 2021, he landed his first residency at Asheville Beauty Academy, a turning point that sharpened his live performance and deepened his ties to the local scene. With Pluto Events, he’s championed rising artists and created a platform for authentic expression in Asheville’s EDM community.

As a producer, Just Nieman has dropped singles like “Lives,” “Personal,” and “My Music,” each revealing a new side of his evolving sound. He’s not just playing tracks—he’s building experiences. Fueled by passion and community, Just Nieman is on a mission to push boundaries and keep dance culture alive and personal.''';
}
