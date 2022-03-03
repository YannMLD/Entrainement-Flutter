import 'package:flutter/material.dart';
import 'storyWidget.dart';
import 'post_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Instagram',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.camera_alt_outlined, color: Colors.black)),
          title: Image.asset(
            'assets/images/instagram-logo.png',
            height: 60,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(Icons.send_outlined, color: Colors.black))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              StoryWidget(), 
              PostWidget()],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            selectedItemColor: Colors.black,
            unselectedItemColor: Colors.grey.shade700,
            type: BottomNavigationBarType.fixed,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search_outlined), label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.video_collection_outlined), label: 'Reals'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite_outline), label: 'Favoris'),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person_outline), label: 'Profile')
            ]),
      ),
    );
  }
}
