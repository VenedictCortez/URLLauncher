import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Share Plus 10.1.2',
      home: SharePlus(),
    );
  }
}

class SharePlus extends StatelessWidget {
  void _shareText() {
    Share.share('This App Showcases SharePlus Plugin');
  }
  void _shareUrl() {
    Share.share('Listen to This Song: www.youtube.com/watch?v=P6NYkUeBoGQ&t');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Share Plus Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'This App showcases the Share Text and URL using Share Plus Package',
                  style: TextStyle(
          fontSize: 12,
        ),
            ),
            ElevatedButton(
              onPressed: _shareText,
              child: Text('Share Text'),
            ),
            ElevatedButton(
              onPressed: _shareUrl,
              child: Text('Share URL'),
            ),
          ],
        ),
      ),
    );
  }
}
