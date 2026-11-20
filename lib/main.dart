import 'package:flutter/material.dart';
void main() { runApp(const MyApp()); }
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark, scaffoldBackgroundColor: Colors.black),
      home: const Home(),
    );
  }
}
class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}
class _HomeState extends State<Home> {
  int _index = 0;
  final List<Widget> _pages = const [FeedPage(), FriendsPage(), CameraPage(), InboxPage(), ProfilePage()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: _pages[_index],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: _index,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: (i) => setState(() => _index = i),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Friends'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box, size: 38), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.inbox), label: 'Inbox'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}
class FeedPage extends StatelessWidget {
  const FeedPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Stack(
        children: [
          Center(
            child: Container(
              height: 300, margin: const EdgeInsets.all(20),
              decoration: BoxDecoration(color: const Color(0xFF1A1A1A), borderRadius: BorderRadius.circular(15)),
              child: const Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                Icon(Icons.play_circle_fill, size: 80, color: Colors.white),
                SizedBox(height: 10),
                Text('Video yahan aayegi', style: TextStyle(color: Colors.white, fontSize: 18)),
                Text('Dubai vibes #fyp', style: TextStyle(color: Colors.grey)),
              ]),
            ),
          ),
          const Positioned(top: 50, left: 0, right: 0, child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [Text('Following  ', style: TextStyle(color: Colors.white70)), Text('For You', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold))])),
          const Positioned(bottom: 20, left: 15, child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [Text('@Ali', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)), Text('Dubai vibes #fyp', style: TextStyle(color: Colors.white))])),
          const Positioned(bottom: 20, right: 15, child: Column(children: [Icon(Icons.favorite, color: Colors.white, size: 35), Text('1.2K', style: TextStyle(color: Colors.white)), SizedBox(height: 15), Icon(Icons.comment, color: Colors.white, size: 30), Text('21', style: TextStyle(color: Colors.white))])),
        ],
      ),
    );
  }
}
class FriendsPage extends StatelessWidget { const FriendsPage({super.key}); @override Widget build(BuildContext context) { return const Center(child: Text('Friends', style: TextStyle(color: Colors.white))); } }
class CameraPage extends StatelessWidget { const CameraPage({super.key}); @override Widget build(BuildContext context) { return const Scaffold(backgroundColor: Colors.black, body: Center(child: Text('Camera yahan aayega', style: TextStyle(color: Colors.white)))); } }
class InboxPage extends StatelessWidget { const InboxPage({super.key}); @override Widget build(BuildContext context) { return const Center(child: Text('Inbox', style: TextStyle(color: Colors.white))); } }
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(backgroundColor: Colors.black, body: Column(children: [SizedBox(height: 60), CircleAvatar(radius: 55, backgroundColor: Colors.purpleAccent, child: Icon(Icons.person, size: 60, color: Colors.white)), SizedBox(height: 10), Text('King of uk', style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold)), Text('@king.of.uk15', style: TextStyle(color: Colors.grey))]));
  }
}
