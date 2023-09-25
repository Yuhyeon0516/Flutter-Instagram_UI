import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const InstagramCloneApp());
}

class InstagramCloneApp extends StatelessWidget {
  const InstagramCloneApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Colors.white,
          secondary: Colors.black,
        ),
        useMaterial3: true,
      ),
      home: const InstagramCloneHome(),
    );
  }
}

class InstagramCloneHome extends StatelessWidget {
  const InstagramCloneHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Instagram',
          style: GoogleFonts.lobsterTwo(
            fontSize: 32,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.favorite_outline,
              size: 32,
            ),
            onPressed: () {
              print("Tab Favorite");
            },
          ),
          IconButton(
            icon: const Icon(
              CupertinoIcons.paperplane,
              size: 32,
            ),
            onPressed: () {
              print("Tab Paperplane");
            },
          )
        ],
      ),
      body: const Placeholder(),
    );
  }
}
