import 'package:flutter/material.dart';

class WorkProcess extends StatelessWidget {
  const WorkProcess({
    Key? key,
    required this.word,
    required this.textScaleFactor,
  }) : super(key: key);

  final String word;
  final double textScaleFactor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Work Process and Methodology",
            style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColorLight),
          ),
          const SizedBox(height: 16.0),
          Text(
            word,
            textScaleFactor: textScaleFactor,
            style: TextStyle(
              fontFamily: 'SourceCodePro',
              letterSpacing: 2,
              fontWeight: FontWeight.w500,
              color: Theme.of(context).primaryColorLight,
            ),
          ),
        ],
      ),
    );
  }
}
