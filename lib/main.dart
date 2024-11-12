import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://www.youtube.com/watch?v=1VlkcdXIKXw');

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'URL Launcher',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  void _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw 'Could not launch $_url';
    }
  }

  void _sendEmail() async {
    final Uri emailUri = Uri(
      scheme: 'mailto',
      path: 'venedict.cortez@gmail.com',
      query: 'Test',
    );

    if (!await launchUrl(emailUri)) {
      throw 'Could not send email';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('URL Launcher'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Flutter Plugin For Launching URL',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            ElevatedButton(
              onPressed: _launchUrl,
              child: const Text('Open URL'),
            ),
            ElevatedButton(
              onPressed: _sendEmail,
              child: const Text('Send Email'),
            ),
          ],
        ),
      ),
    );
  }
}
