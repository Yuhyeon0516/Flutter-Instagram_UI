import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_ui/body.dart';

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
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
        ),
        useMaterial3: true,
      ),
      home: const InstagramCloneHome(),
    );
  }
}

class InstagramCloneHome extends StatefulWidget {
  const InstagramCloneHome({super.key});

  @override
  State<InstagramCloneHome> createState() => _InstagramCloneHomeState();
}

class _InstagramCloneHomeState extends State<InstagramCloneHome> {
  late int index;

  @override
  void initState() {
    super.initState();
    index = 0;
  }

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
      body: InstagramBody(index: index),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: index,
        onTap: (newIndex) => setState(() => index = newIndex),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 32,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 32,
            ),
            label: "Search",
          )
        ],
      ),
    );
  }
}
