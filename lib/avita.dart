import 'package:flutter/material.dart';
import 'gd.dart';

class Avita extends StatelessWidget {
  Avita({
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
                  "Pioneering Advanced Surgical Simulations for Avita",
                  style: TextStyle(
                      fontFamily: 'SourceCodePro',
                      letterSpacing: 2.5,
                      color: Theme.of(context).primaryColorLight,
                      fontSize: fontSize * 1.5),
                ),
                const SizedBox(height: 10.0),
                Image.asset('assets/recell-device.png'), // Add spacing
                const SizedBox(height: 10.0),
                Text(
                  """
Collaborated closely with Avita, a frontrunner in regenerative medicine, to spearhead a transformative medical training simulation project. 

Leading a proficient development team, we employed Unreal Engine technology to craft tailored training solutions, primarily for Avita's exclusive product, ReCell. Our innovations included pioneering intuitive interaction techniques for essential medical instruments like syringes and scalpels, including softbody physics, on the Quest 2 platform. """,
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
                  "Pioneering Advanced Surgical Simulations for Avita",
                  style: TextStyle(
                      fontFamily: 'SourceCodePro',
                      letterSpacing: 2.5,
                      color: Theme.of(context).primaryColorLight,
                      fontSize: fontSize * 1.5),
                ),
                const SizedBox(height: 10.0),
                Image.asset('assets/recell-device.png'), // Add spacing
                const SizedBox(height: 10.0),
                Text(
                  """
Collaborated closely with Avita, a frontrunner in regenerative medicine, to spearhead a transformative medical training simulation project. 

Leading a proficient development team, we employed Unreal Engine technology to craft tailored training solutions, primarily for Avita's exclusive product, ReCell. Our innovations included pioneering intuitive interaction techniques for essential medical instruments like syringes and scalpels, including softbody physics, on the Quest 2 platform. 

This enhanced the authenticity and tactile feedback of surgical preparation simulations, particularly for burn victim procedures. Our commitment to high fidelity and precision played a pivotal role in advancing the training modules for surgical technicians, ensuring they could adeptly navigate Avita's unique enzymatic process.""",
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
