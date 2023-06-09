import 'package:first_ui_design/views/login_screens.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;

    List pages = const [
      HomePage(),
      LoginScreens(),
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: const Icon(Icons.menu),
        title: const Text(
          'My Profile',
          style: TextStyle(
            fontSize: 20,
          ),
        ),
        actions: const [
          Icon(Icons.logout),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Welcome   to my Channel',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/image/image1.jpg',
              width: 300,
              height: 300,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Click me'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Icon(Icons.code),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Hello World',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/image/profile.png',
                  width: 100,
                  height: 100,
                ),
                const SizedBox(
                  width: 20,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name : Tola',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      'Email : Helloworld@gmail.com',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        items: const [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Profile',
            icon: Icon(Icons.person),
          ),
        ],
        onTap: (index) {
          selectedIndex = index;
        },
      ),
    );
  }
}
