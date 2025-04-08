import 'package:flutter/material.dart';

class ProfilImgageVorname extends StatelessWidget {
  const ProfilImgageVorname({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                    color: Color.fromARGB(255, 39, 60, 69),
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 58,
                  height: 58,
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 255, 255, 255),
                    shape: BoxShape.circle,
                  ),
                ),
                Container(
                  width: 54,
                  height: 54,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage('lib/assets/images/test_button.jpg'),
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
    );
  }
}
