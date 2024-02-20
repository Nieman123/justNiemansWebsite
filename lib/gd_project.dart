import 'package:flutter/material.dart';
import 'gd.dart';

class GDProject extends StatelessWidget {
  GDProject({Key? key, required this.fontSize, required this.isMobile})
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
                  "Galaxy Donutz: Immersive VR Shop Experience",
                  style: TextStyle(
                      fontFamily: 'SourceCodePro',
                      letterSpacing: 2.5,
                      color: Theme.of(context).primaryColorLight,
                      fontSize: fontSize * 1.5),
                ),
                const SizedBox(height: 10.0),
                Image.asset('assets/galaxy_donutz_promo.gif'), // Add spacing
                const SizedBox(height: 10.0),
                Text(
                  """Galaxy Donutz is an immersive shop simulator developed using Unreal Engine 4. Designed for Oculus Quest and SteamVR platforms, it integrates a comprehensive suite of Amazon Web Services. 

A distinguishing feature is the cross-platform 3D positional voice chat, enhancing the user interaction experience. 

The simulator also boasts a robust API designed with GraphQL, enabling dynamic retrieval and updating of player data. This lays the foundation for an engaging multiplayer experience, where players can showcase personalized avatars and compete on high score boards.""",
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
                  "Galaxy Donutz: Immersive VR Shop Experience",
                  style: TextStyle(
                      fontFamily: 'SourceCodePro',
                      letterSpacing: 2.5,
                      color: Theme.of(context).primaryColorLight,
                      fontSize: fontSize * 1.5),
                ),
                const SizedBox(height: 10.0),
                Image.asset('assets/galaxy_donutz_promo.gif'), // Add spacing
                const SizedBox(height: 10.0),
                Text(
                  """Galaxy Donutz is an immersive shop simulator developed using Unreal Engine 4. Designed for Oculus Quest and SteamVR platforms, it integrates a comprehensive suite of Amazon Web Services. 

A distinguishing feature is the cross-platform 3D positional voice chat, enhancing the user interaction experience. 

The simulator also boasts a robust API designed with GraphQL, enabling dynamic retrieval and updating of player data. This lays the foundation for an engaging multiplayer experience, where players can showcase personalized avatars and compete on high score boards.""",
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
