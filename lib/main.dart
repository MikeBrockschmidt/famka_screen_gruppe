import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CustomScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class CustomScreen extends StatelessWidget {
  const CustomScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        toolbarHeight: 1,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Container(
            height: 90,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
            ),
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 30),
            child: const Text(
              'Gruppe',
              style: TextStyle(
                fontSize: 61,
                fontWeight: FontWeight.w900,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            height: 240,
            width: double.infinity,
            color: Colors.white,
            child: Center(
              child: Image.asset(
                'lib/assets/images/rahmen1.png',
                width: 240,
                height: 240,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Container(
            height: 60,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                top: BorderSide(
                  color: Colors.black,
                  width: 0.5,
                ),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Gruppen Name',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.add,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            width: double.infinity,
            color: Colors.white,
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: const [
                Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                SizedBox(width: 8),
                Text(
                  'Standort',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 120,
            width: double.infinity,
            color: Colors.white,
            child: Column(
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const SizedBox(width: 30),
                        for (int i = 0; i < 8; i++)
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 2),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 80,
                                  height: 80,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Container(
                                        width: 70,
                                        height: 70,
                                        decoration: const BoxDecoration(
                                          color:
                                              Color.fromARGB(255, 39, 60, 69),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Container(
                                        width: 58,
                                        height: 58,
                                        decoration: const BoxDecoration(
                                          color: Color.fromARGB(
                                              255, 255, 255, 255),
                                          shape: BoxShape.circle,
                                        ),
                                      ),
                                      Container(
                                        width: 54,
                                        height: 54,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          image: DecorationImage(
                                            image: AssetImage(
                                                'lib/assets/images/test_button.jpg'),
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(height: 1),
                                const Text(
                                  'Vorname',
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 0.5,
                  width: double.infinity,
                  color: Colors.black,
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.white,
              child: Row(
                children: [
                  Container(
                    width: 40,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('lib/assets/images/hintergrund.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: const Padding(
                        padding: EdgeInsets.all(26),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem.',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('lib/assets/images/hintergrund.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: 82,
        color: Colors.yellow,
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              icon: const Icon(Icons.home, size: 32, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.search, size: 32, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.notifications,
                  size: 32, color: Colors.black),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.settings, size: 32, color: Colors.black),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
