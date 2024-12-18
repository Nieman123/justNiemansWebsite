import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'link_box.dart';

class LinksPage extends StatelessWidget {
  const LinksPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Make the column scrollable
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 20),
              GestureDetector(
                // Wrap the CircleAvatar with GestureDetector
                onTap: () {
                  context.go('/');
                },
                child: const CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      NetworkImage('https://i.imgur.com/afap3cq.jpeg'),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "JUST NIEMAN",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30),
              ),
              const SizedBox(height: 20),
              const LinkBox(
                  icon: Icons.link,
                  image: AssetImage("assets/its-not-that-deep.png"),
                  text: 'PRESAVE "IT\'S NOT THAT DEEP"',
                  url: 'https://distrokid.com/hyperfollow/justnieman/its-not-that-deep'),
              const LinkBox(
                  icon: Icons.link,
                  image: AssetImage("assets/moby-d.png"),
                  text: 'STREAM "MOBY D"',
                  url: 'https://distrokid.com/hyperfollow/justnieman/moby-d'),
              const LinkBox(
                  icon: Icons.link,
                  image: AssetImage("assets/my-music.webp"),
                  text: 'STREAM "MY MUSIC"',
                  url: 'https://distrokid.com/hyperfollow/justnieman/my-music'),
              const LinkBox(
                  icon: Icons.link,
                  image: AssetImage("assets/lives.webp"),
                  text: 'STREAM "PERSONAL"',
                  url: 'https://distrokid.com/hyperfollow/justnieman/personal'),
              const LinkBox(
                  icon: Icons.music_note,
                  image: AssetImage("assets/personal.webp"),
                  text: 'STREAM "LIVES"',
                  url: 'https://distrokid.com/hyperfollow/justnieman/lives'),
              const LinkBox(
                  icon: Icons.youtube_searched_for,
                  image: AssetImage("assets/soundcloud-logo.png"),
                  text: 'SOUNDCLOUD',
                  url: 'https://soundcloud.com/just-nieman'),
              const LinkBox(
                  icon: Icons.youtube_searched_for,
                  image: AssetImage("assets/youtube-icon.webp"),
                  text: 'NIEMIX VOL. 1 on YOUTUBE',
                  url: 'https://www.youtube.com/watch?v=_HD_6o6um1U'),
              const LinkBox(
                  icon: Icons.music_note,
                  image: AssetImage("assets/instagram.webp"),
                  text: 'FOLLOW ME ON INSTA',
                  url: 'https://instagram.com/justnieman/'),
            ],
          ),
        ),
      ),
    );
  }
}
