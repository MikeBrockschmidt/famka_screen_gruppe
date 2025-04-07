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
            color: const Color.fromARGB(255, 255, 255, 255),
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
              color: Color.fromARGB(255, 255, 255, 255),
              border: Border(
                top: BorderSide(
                  color: Colors.black,
                  width: 1.0,
                ),
              ),
            ),
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Gruppen Name',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 40,
            width: double.infinity,
            color: const Color.fromARGB(255, 255, 255, 255),
            padding: const EdgeInsets.only(left: 30),
            child: Row(
              children: const [
                Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 0, 0, 0),
                ),
                SizedBox(width: 8),
                Text(
                  'Standort',
                  style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 140,
            width: double.infinity,
            color: Colors.red,
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(6, (index) {
                  return buildRoundButtonContainer();
                }),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 255, 255, 255),
              child: Row(
                children: [
                  Container(
                    width: 40,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('lib/assets/images/hintergrund.jpg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(26),
                        child: Text(
                          'Längerer Text hier, der den mittleren Bereich ausfüllt und vertikal scrollbar ist. ' *
                              30,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 40,
                    decoration: BoxDecoration(
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

  Widget buildRoundButton() {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage('lib/assets/images/test_button.jpg'),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Text(
            'Vorname',
            style: TextStyle(
              fontSize: 10,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildRoundButtonContainer() {
    return Container(
      margin: const EdgeInsets.only(left: 1),
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: buildRoundButton(),
    );
  }
}
