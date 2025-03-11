import 'package:flutter/material.dart';
import '../utils/coffee_tile.dart';
import '../utils/coffee_type.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // list of coffee types
  final List coffeeType = [
    // [ coffee type, isSelected ]
    ['Cappucino', true],
    ['Latte', false],
    ['Flat White', false],
    ['Espresso', false],
  ];

  void coffeeTypeSelected(int index) {
    for (int i = 0; i < coffeeType.length; i++) {
      coffeeType[i][1] = false;
    }
    setState(() {
      coffeeType[index][1] = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color.fromARGB(0, 233, 228, 228),
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 25.0),
            child: Icon(Icons.person),
          ),
        ],
      ),

      // bottom navigation bar
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
        ],
      ),

      // Body
      body: Column(
        children: [
          // find the best coffee for you
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22.0),
            child: Text(
              'Find the best coffee for you',
              style: GoogleFonts.bebasNeue(
                fontSize: 46,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 6),

          // search bar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.search),
                hintText: 'Find your coffee...',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.grey.shade600),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),

          // Horizontal view of coffee categories
          SizedBox(
            height: 40,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: coffeeType.length,
                itemBuilder: (context, index) {
                  return CoffeeType(
                      coffeeType: coffeeType[index][0],
                      isSelected: coffeeType[index][1],
                      onTap: () {
                        coffeeTypeSelected(index);
                      });
                }),
          ),

          // Horizontal listview of coffee tiles
          SizedBox(
            height: 280,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  CoffeeTile(
                    coffeeName: 'Cappucino',
                    coffeeImagePath: 'lib/images/capp.jpeg',
                    coffeePrice: '6.99',
                  ),
                  CoffeeTile(
                    coffeeName: 'Latte',
                    coffeeImagePath: 'lib/images/coffee.jpg',
                    coffeePrice: '5.99',
                  ),
                  CoffeeTile(
                    coffeeName: 'Flat White',
                    coffeeImagePath: 'lib/images/latte.jpg',
                    coffeePrice: '2.99',
                  ),
                  CoffeeTile(
                    coffeeName: 'Espresso',
                    coffeeImagePath: 'lib/images/espresso.jpeg',
                    coffeePrice: '4.99',
                  ),
                ],
            ),
          ),
        ],
      ),
    );
  }
}
