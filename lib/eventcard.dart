import 'package:flutter/material.dart';

class EventCard extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String date;
  final String location;

  const EventCard({
    Key? key,
    required this.title,
    required this.imageUrl,
    required this.date,
    required this.location,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 5.0,
      color: Colors.white.withOpacity(0.2),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w700,
                letterSpacing: 2.0,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            const SizedBox(height: 10.0),
            Image.asset(imageUrl), // Event image
            const SizedBox(height: 10.0),
            Text(
              date,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                letterSpacing: 1.0,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
            Text(
              location,
              style: TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w300,
                letterSpacing: 1.0,
                color: Theme.of(context).colorScheme.onPrimary,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
