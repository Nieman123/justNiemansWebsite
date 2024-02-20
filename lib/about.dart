import 'package:flutter/material.dart';

class About extends StatelessWidget {
  About({
    Key? key,
    required this.fontSize,
  }) : super(key: key);

  final double fontSize;
  final String gotAbout = """
        With a dynamic career that spans across various domains, from XR development in both Unity and Unreal Engine, to web development and leading projects that intersect cutting-edge technology with practical applications, I've developed a holistic perspective on software engineering. My portfolio showcases projects that have pushed the boundaries of what's possible in virtual reality, AR, and more traditional software spaces.

        At the heart of my work is a desire to bridge the gap between technology and user experience. Whether it's creating a medical training application with unprecedented realism or developing a multiplatform installer that simplifies intricate processes, I thrive on challenges that demand both technical prowess and a deep understanding of user needs.

        Beyond the code, I am an ardent advocate for collaboration and mentoring. Over the years, I've had the privilege of coaching teams, sharing best practices, and fostering environments where innovation thrives.""";

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(12.0, 5.0, 12.0, 30.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30.0),
            child: Text(
              gotAbout,
              style: TextStyle(
                  fontFamily: 'SourceCodePro',
                  letterSpacing: 2.5,
                  color: Theme.of(context).primaryColorLight,
                  fontSize: fontSize),
            ),
          ),
        ],
      ),
    );
  }
}
