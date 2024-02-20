import 'package:flutter/material.dart';

class Multiverse extends StatelessWidget {
  Multiverse({Key? key, required this.fontSize, required this.isMobile})
      : super(key: key);

  final double fontSize;
  final bool isMobile;

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
                  "Crafting an Inclusive Multiverse: From UE4 to Unity & WebGL",
                  style: TextStyle(
                      fontFamily: 'SourceCodePro',
                      letterSpacing: 2.5,
                      color: Theme.of(context).primaryColorLight,
                      fontSize: fontSize * 1.5),
                ),
                const SizedBox(height: 10.0),
                Image.asset('assets/bldr.gif'), // Add spacing
                const SizedBox(height: 10.0),
                Text(
                  """Showcased exemplary leadership by steering a transition from UE4 to Unity, coupled with WebGL, to usher in enhanced features to the multiverse platform. 
                  
This shift was complemented by the introduction of a user-centric world-building interface, allowing users to craft distinctive rooms or scenes with ease. Furthermore, the collaboration with a dedicated Unity team led to the birth of a harmonized frontend builder and player applications. 
                  
The backend was built with a GraphQL API and a React based front end was implemented for efficient asset management and world submissions.""",
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
                  "Crafting an Inclusive Multiverse: From UE4 to Unity & WebGL",
                  style: TextStyle(
                      fontFamily: 'SourceCodePro',
                      letterSpacing: 2.5,
                      color: Theme.of(context).primaryColorLight,
                      fontSize: fontSize * 1.5),
                ),
                const SizedBox(height: 10.0),
                Image.asset('assets/bldr.gif'), // Add spacing
                const SizedBox(height: 10.0),
                Text(
                  """Showcased exemplary leadership by steering a transition from UE4 to Unity, coupled with WebGL, to usher in enhanced features to the multiverse platform. 
                  
This shift was complemented by the introduction of a user-centric world-building interface, allowing users to craft distinctive rooms or scenes with ease. Furthermore, the collaboration with a dedicated Unity team led to the birth of a harmonized frontend builder and player applications. 
                  
The backend was built with a GraphQL API and a React based front end was implemented for efficient asset management and world submissions.""",
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
