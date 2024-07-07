import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:package_example/screen/about_us_screen.dart';
import 'package:package_example/screen/contact_us_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> sliders = [
    "images/slider1.jpg",
    "images/slider2.jpg",
    "images/slider3.jpg",
    "images/slider4.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.blue,
                  image: DecorationImage(
                    image: AssetImage('asset/images/slider1.jpg'),
                    fit: BoxFit.cover,
                  )),
              child: Text('Drawer Header'),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const AboutUsScreen()),
                );
              },
              title: const Text('About Us'),
            ),
            ListTile(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => const ContactUsScreen()),
                );
              },
              title: const Text('Contact Us'),
            ),
          ],
        ),
      ),
      appBar: AppBar(title: Text("Home")),
      body: Container(
        child: Swiper(
          control: SwiperControl(),
          itemCount: sliders.length,
          itemBuilder: (context, index) =>
              Image.asset("asset/${sliders[index]}"),
        ),
      ),
      bottomNavigationBar:
          BottomNavigationBar(showUnselectedLabels: true, items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
            backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: "Settings",
            backgroundColor: Colors.blue),
      ]),
    );
  }
}
