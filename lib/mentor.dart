import 'package:flutter/material.dart';
import 'gd.dart';

class Mentor extends StatelessWidget {
  Mentor({
    Key? key,
    required this.fontSize,
    required this.isMobile,
  }) : super(key: key);

  final bool isMobile;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    if (isMobile) {
      return Padding(
        padding: const EdgeInsets.fromLTRB(12.0, 5.0, 12.0, 30.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          elevation: 5.0,
          color: Colors.white.withOpacity(0.2), // Transparent white background
          child: Padding(
            padding: const EdgeInsets.all(
                20.0), // Overall padding for the Card's content
            child: Column(
              children: [
                Text(
                  "Leading with Knowledge: Coaching for Cross-Platform Success",
                  style: TextStyle(
                      fontFamily: 'SourceCodePro',
                      letterSpacing: 2.5,
                      color: Theme.of(context).primaryColorLight,
                      fontSize: fontSize * 1.5),
                ),
                const SizedBox(height: 10.0),
                Text(
                  """
As a dedicated team mentor, I strive to fosted an environment enriched with knowledge-sharing and collaboration. Drawing from my expertise, I guided team members on the nuances of creating multiplayer experience. 
                  
Emphasizing cross-platform functionality, I ensured that our projects seamlessly catered to diverse user bases. Additionally, my proficiency in CI/CD and GitHub Actions was instrumental in streamlining development processes, bolstering team growth, and instilling industry-leading best practices.""",
                  style: TextStyle(
                      fontFamily: 'SourceCodePro',
                      letterSpacing: 2.5,
                      color: Theme.of(context).primaryColorLight,
                      fontSize: fontSize),
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.fromLTRB(12.0, 5.0, 12.0, 30.0),
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          elevation: 5.0,
          color: Colors.white.withOpacity(0.2), // Transparent white background
          child: Padding(
            padding: const EdgeInsets.all(
                20.0), // Overall padding for the Card's content
            child: Column(
              children: [
                Text(
                  "Leading with Knowledge: Coaching for Cross-Platform Success",
                  style: TextStyle(
                      fontFamily: 'SourceCodePro',
                      letterSpacing: 2.5,
                      color: Theme.of(context).primaryColorLight,
                      fontSize: fontSize * 1.5),
                ),
                const SizedBox(height: 10.0),
                Text(
                  """
As a dedicated team mentor, I strive to fosted an environment enriched with knowledge-sharing and collaboration. Drawing from my expertise, I guided team members on the nuances of creating multiplayer experience. 
                  
Emphasizing cross-platform functionality, I ensured that our projects seamlessly catered to diverse user bases. Additionally, my proficiency in CI/CD and GitHub Actions was instrumental in streamlining development processes, bolstering team growth, and instilling industry-leading best practices.""",
                  style: TextStyle(
                      fontFamily: 'SourceCodePro',
                      letterSpacing: 2.5,
                      color: Theme.of(context).primaryColorLight,
                      fontSize: fontSize),
                ),
              ],
            ),
          ),
        ),
      );
    }
  }
}
