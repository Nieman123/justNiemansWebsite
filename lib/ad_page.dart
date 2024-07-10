import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

class AdPage extends StatelessWidget {
  const AdPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 20),
              GestureDetector(
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
                "JUST NIEMAN'S \nIN-WASH USB CLEANER",
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 30),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                  'https://i.imgur.com/dp7V40p.png', // URL to your product image
                  height: 350,
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "For pristine audio quality!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                  fontSize: 24,
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  """Do you want your MP3s to sound as crisp and clean as possible? Look no further!
                  
Nieman's In-Wash USB Cleaner is here to save the day. Simply toss your USB in the washer, add some Tide (no bleach), and voila! Clean and crisp MP3s every time.""",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "Order Now!",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton.icon(
                onPressed: () {
                  // Navigate to a donation page or show a dialog
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text("Donate to Nieman"),
                        content: const Text(
                            """Click the button below to make a "purchase" via Venmo."""),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text("Cancel"),
                          ),
                          TextButton(
                            onPressed: () async {
                              // Add your Venmo link here
                              const url = 'https://venmo.com/u/nieman123';
                              var uri = Uri.parse(
                                  url); // Use the URL passed to the widget
                              if (await canLaunchUrl(uri)) {
                                await launchUrl(uri);
                              } else {
                                throw 'Could not launch $url';
                              }
                            },
                            child: const Text("Donate"),
                          ),
                        ],
                      );
                    },
                  );
                },
                icon: const Icon(Icons.attach_money),
                label: const Text("Buy Nieman's In-Wash USB Cleaner"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.purple,
                  onPrimary: Colors.white,
                  textStyle: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const Text(
                "Disclaimer: This product is a joke. But feel free to send me drink money!",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 12,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
