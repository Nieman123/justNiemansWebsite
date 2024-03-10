import 'package:flutter/material.dart';
import 'link_box.dart';

class LinksPage extends StatelessWidget {
  const LinksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20), // Add some space before the profile photo
            CircleAvatar(
              radius: 50, // Adjust the size as needed
              backgroundImage: NetworkImage(
                  'https://i.imgur.com/afap3cq.jpeg'), // Replace with your image URL
            ),
            SizedBox(height: 20), // Space between photo and links
            Text(
              "JUST NIEMAN",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30 // Makes text bold
                  ),
            ),
            SizedBox(height: 20), // Space between photo and links
            LinkBox(
                icon: Icons.link,
                image: AssetImage("assets/lives.webp"),
                text: 'STREAM "PERSONAL"',
                url: 'https://distrokid.com/hyperfollow/justnieman/personal'),
            LinkBox(
                icon: Icons.music_note,
                image: AssetImage("assets/personal.webp"),
                text: 'STREAM "LIVES"',
                url: 'https://distrokid.com/hyperfollow/justnieman/lives'),
            LinkBox(
                icon: Icons.youtube_searched_for,
                image: AssetImage("assets/youtube-icon.webp"),
                text: 'NIEMIX VOL. 1 on YOUTUBE',
                url: 'https://www.youtube.com/watch?v=_HD_6o6um1U'),
            LinkBox(
                icon: Icons.music_note,
                image: AssetImage("assets/instagram.webp"),
                text: 'FOLLOW ME ON INSTA',
                url: 'https://instagram.com/justnieman/'),
          ],
        ),
      ),
    );
  }
}
