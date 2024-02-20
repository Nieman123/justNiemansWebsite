import 'package:flutter/material.dart';
import 'gd.dart';

class Teams extends StatelessWidget {
  Teams({
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
                  """As a seasoned development leader, I have consistently steered teams to success across a multitude of platforms and technologies. My leadership journey has spanned directing a multiplatform installer's creation using Dart and Flutter to pioneering immersive WebGL experiences for high-profile clients like L'Oréal Makeup Group. 
                  
My adeptness in fostering collaboration has been particularly evident in projects such as the transition from UE4 to Unity and WebGL, where I showcased adaptability and vision. Whether it's optimizing environments for broader user accessibility or innovatively leveraging GraphQL APIs for robust backend functionalities, I've always empowered my teams to push boundaries. 

My approach blends technical acumen with a collaborative spirit, ensuring that every team member is aligned, inspired, and geared towards project completion, innovation, and excellence.""",
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
                  "Leading Development Visions to Reality",
                  style: TextStyle(
                      fontFamily: 'SourceCodePro',
                      letterSpacing: 2.5,
                      color: Theme.of(context).primaryColorLight,
                      fontSize: fontSize * 1.5),
                ),
                const SizedBox(height: 10.0),
                Text(
                  """As a seasoned development leader, I have consistently steered teams to success across a multitude of platforms and technologies. My leadership journey has spanned directing a multiplatform installer's creation using Dart and Flutter to pioneering immersive WebGL experiences for high-profile clients like L'Oréal Makeup Group. 
                  
My adeptness in fostering collaboration has been particularly evident in projects such as the transition from UE4 to Unity and WebGL, where I showcased adaptability and vision. Whether it's optimizing environments for broader user accessibility or innovatively leveraging GraphQL APIs for robust backend functionalities, I've always empowered my teams to push boundaries. 

My approach blends technical acumen with a collaborative spirit, ensuring that every team member is aligned, inspired, and geared towards project completion, innovation, and excellence.""",
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
