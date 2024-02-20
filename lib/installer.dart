import 'package:flutter/material.dart';
import 'gd.dart';

class Installer extends StatelessWidget {
  Installer({
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
                  "Multiplatform Installation",
                  style: TextStyle(
                      fontFamily: 'SourceCodePro',
                      letterSpacing: 2.5,
                      color: Theme.of(context).primaryColorLight,
                      fontSize: fontSize * 1.5),
                ),
                const SizedBox(height: 10.0),
                Text(
                  """
Pioneered the development of a versatile installer utilizing Dart and Flutter, offering hassle-free installation and updates for Mac and Windows desktop multiverse experiences. 

This not only heightened the user experience but also escalated system efficiency. 

Additionally, a notable achievement was the successful porting of the UE4 multiverse experience to MacOS, which ushered in the platform to an expanded audience.""",
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
                  "Multiplatform Installation",
                  style: TextStyle(
                      fontFamily: 'SourceCodePro',
                      letterSpacing: 2.5,
                      color: Theme.of(context).primaryColorLight,
                      fontSize: fontSize * 1.5),
                ),
                const SizedBox(height: 10.0),
                Image.asset('assets/flutter+dart.png'), // Add spacing
                const SizedBox(height: 10.0),
                Text(
                  """
Pioneered the development of a versatile installer utilizing Dart and Flutter, offering hassle-free installation and updates for Mac and Windows desktop multiverse experiences. 

This not only heightened the user experience but also escalated system efficiency. 

Additionally, a notable achievement was the successful porting of the UE4 multiverse experience to MacOS, which ushered in the platform to an expanded audience.""",
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
