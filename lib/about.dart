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
      """Just Nieman is a multi-genre EDM producer and DJ from the laid-back mountain city of Asheville, NC. With roots deeply embedded in festival scene since 2013, Nieman has developed a rich understanding and appreciation for the music and culture that define this community. His journey into the world of DJing began five years ago, initially playing college house parties hosted by close friends. These humble beginnings were a launchpad for his passion and talent, which only continued to grow.

In late 2021, Just Nieman transitioned into a more professional setting, securing his first residency at the locally loved, Asheville Beauty Academy. This pivotal moment marked the beginning of a new chapter, allowing him to showcase his skills to a wider audience and refine his craft in a live club setting.

In an effort to foster the local EDM scene and provide a platform for up-and-coming artists, Just co-founded Pluto Events with a group of like-minded friends. This production company has quickly become a cornerstone of the Asheville EDM scene, promoting local artists and organizing events that bring together dance enthusiasts for nights filled with energy, rhythm, and human connection. Through Pluto Events, Just Nieman has been instrumental in providing a platform for creative expression and musical exploration.

Over the past three years, Just Nieman has also ventured into music production, channeling his creative energy into crafting original tracks. He has released three singles to date - "Lives," "Personal," and "My Music" - each offering a glimpse into his evolving sound and artistic vision. These tracks embody his journey through the realms of EDM, showcasing his versatility as a producer and his ability to craft soundscapes that resonate with listeners.

Just Nieman continues to be a prominent figure in the Asheville music scene and beyond, dedicated to pushing the boundaries of electronic music and creating experiences that unite and inspire. With a relentless passion for his craft and a commitment to community, Just Nieman is poised for further exploration and success in the ever-changing world of EDM.

Just Nieman continues to evolve as an artist, perusing a journey of musical and personal discovery, dedicating himself to creating experiences that unite and inspire. With a relentless passion and a commitment to community, Just Nieman is poised for further exploration and success in the ever-changing and fluctuating world of EDM.""";
}
