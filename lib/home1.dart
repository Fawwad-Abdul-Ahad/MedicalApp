import 'package:flutter/material.dart';
import 'package:medicalapp/Widgets/items.dart';
import 'package:medicalapp/contants/color.dart';

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({super.key});

  @override
  _HomeScreen1State createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  List<Widget> screens = [
    HomeScreen1(),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Color.fromARGB(255, 248, 254, 255),
          child: Column(
            children: [
              Container(
                height: 260,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: pColor,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  children: [
                    SizedBox(height: 60),
                    Container(
                      height: 50,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundColor: Colors.white,
                            backgroundImage: AssetImage('assets/images/logo1.jpg'),
                          ),
                          Container(
                            height: 50,
                            width: 120,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.edit_notifications_sharp,
                                  size: 28,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.card_travel_outlined,
                                  size: 28,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20.0, right: 10),
                      child: Container(
                        width: double.infinity,
                        height: 100,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Hi, Fawwad",
                              style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white),
                            ),
                            Text(
                              "Welcome to Quick Medical Store",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 242, 240, 240),
                                  fontWeight: FontWeight.w400),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: 350,
                height: 80,
                child: TextField(
                  keyboardType: TextInputType.name,
                  style: TextStyle(fontSize: 14),
                  decoration: InputDecoration(
                    prefixIcon: Icon(
                      Icons.search,
                      size: 24,
                    ),
                    hintText: "Search Medicine and Healthcare Products",
                    hintStyle: TextStyle(
                        fontSize: 14,
                        color: Color.fromARGB(255, 117, 117, 117)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 14, horizontal: 18),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  height: 25,
                  width: double.infinity,
                  child: Text(
                    "Top Categories",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
              SizedBox(height: 8),
              Image.asset('assets/images/categories_items.png'),
              Image.asset('assets/images/home_image.png'),
              SizedBox(height: 0),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22.0),
                child: Container(
                  height: 80,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Deals of the Day",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "More",
                        style: TextStyle(fontSize: 15, color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProductContainer(
                      proName: "Accu-Check Active",
                      descName: "Elon srip",
                      rupees: "120"),
                  ProductContainer(
                      proName: "Accu-Check Active",
                      descName: "Test Strip",
                      rupees: "Rs 150"),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ProductContainer(
                      proName: "Accu-Check Active",
                      descName: "Elon srip",
                      rupees: "120"),
                  ProductContainer(
                      proName: "Accu-Check Active",
                      descName: "Test Strip",
                      rupees: "Rs 150"),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // fixedColor: Color.fromARGB(255, 255, 255, 255),
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            
          ),
          
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notifications',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),

        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        selectedFontSize: 16,
        onTap: _onItemTapped,
      ),
    );
  }
}
