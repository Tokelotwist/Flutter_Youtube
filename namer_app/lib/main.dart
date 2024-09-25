import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Open YouTube Example'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: _openYouTube,
            child: Text('Open YouTube'),
          ),
        ),
      ),
    );
  }

  // Method to open YouTube
  void _openYouTube() async {
    const url = 'https://www.youtube.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
