import 'package:flutter/material.dart';
import 'package:medicalapp/Widgets/status_widget.dart';
import 'package:medicalapp/addtocart_screen.dart';
import 'package:medicalapp/contants/color.dart';
import 'package:medicalapp/data/functions.dart';

class DetailsContianer extends StatefulWidget {
  const DetailsContianer({super.key});
  @override
  State<DetailsContianer> createState() => _DetailsContianerState();
}

class _DetailsContianerState extends State<DetailsContianer> {
  final proName = "Sugar Free Gold";
  bool isAdded = false;

  void toggleCart() {
    setState(() {
      if (isInCart(proName)) {
        removeCart(proName);
      } else {
        addToCart(proName);
      }
      isAdded = isInCart(proName); // Update isAdded state after modifying the cart
    });
  }

  @override
  void initState() {
    super.initState();
    isAdded = isInCart(proName); // Initial state
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              size: 29,
              color: const Color.fromARGB(255, 9, 7, 7),
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 18.0),
            child: Row(
              children: [
                Icon(
                  Icons.notification_important_outlined,
                  size: 29,
                  color: const Color.fromARGB(255, 110, 110, 110),
                ),
                SizedBox(
                  width: 12,
                ),
                Icon(
                  Icons.card_travel_sharp,
                  size: 29,
                  color: const Color.fromARGB(255, 110, 110, 110),
                ),
              ],
            ),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: EdgeInsets.all(18),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                width: double.infinity,
                height: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sugar Free Gold Low Calories",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Etium moslis metus non perus",
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 180,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 226, 226, 226),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Image.asset('assets/images/product.png'),
                    ),
                  ],
                ),
              ),
              Container(
                width: double.infinity,
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Rs. 56",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w700),
                          ),
                          Text("Etam mollis"),
                        ],
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 28,
                            width: 28,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3),
                                border: Border.all(
                                  color: Colors.blue,
                                  width: 2,
                                )),
                            child: InkWell(
                              onTap: toggleCart,
                              child: Icon(
                                isAdded ? Icons.check : Icons.add,
                                color: pColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Add to Cart",
                            style: TextStyle(
                                fontSize: 15,
                                color: pColor,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Divider(),
              Container(
                width: double.infinity,
                height: 150,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Package Size",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 100,
                      width: 500,
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 238, 238, 238),
                                borderRadius: BorderRadius.circular(8),
                                border:
                                    Border.all(color: Colors.orange, width: 2)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Rs.106",
                                  style: TextStyle(
                                    color: Colors.orange,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "50 pellets",
                                  style: TextStyle(
                                      color: Colors.orange, fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 238, 238, 238),
                              borderRadius: BorderRadius.circular(8),
                              // border: Border.all(
                              //   color: Colors.orange,
                              //   width: 2
                              // )
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Rs.166",
                                  style: TextStyle(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "110 pellets",
                                  style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 134, 134, 134),
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 238, 238, 238),
                              borderRadius: BorderRadius.circular(8),
                              // border: Border.all(
                              //   color: Colors.orange,
                              //   width: 2
                              // )
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Rs.252",
                                  style: TextStyle(
                                    color: const Color.fromARGB(255, 0, 0, 0),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  "500 pellets",
                                  style: TextStyle(
                                      color: const Color.fromARGB(
                                          255, 134, 134, 134),
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                width: double.infinity,
                height: 140,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Product Details",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 140, 140, 140),
                          fontSize: 15),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: double.infinity,
                height: 140,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Ingredients",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi Nunc risus massa, gravida id egestas a, pretium vel tellus. Praesent feugiat diam sit amet pulvinar finibus. Etiam et nisi aliquet, accumsan nisi sit.",
                      style: TextStyle(
                          color: const Color.fromARGB(255, 140, 140, 140),
                          fontSize: 15),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Container(
                height: 20,
                width: double.infinity,
                child: Row(
                  children: [
                    Text(
                      "Expiry Date",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Text("25/12/2025")
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Container(
                height: 40,
                width: double.infinity,
                child: Row(
                  children: [
                    Text(
                      "Brand Name",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      width: 18,
                    ),
                    Text(
                      "Something",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              StatusWidget(),
              Container(
                height: 200,
                width: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 100,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "4.2",
                            style: TextStyle(
                                fontSize: 20,
                                color: const Color.fromARGB(255, 81, 81, 81),
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            "05-oct- 2020",
                            style: TextStyle(fontSize: 16, color: Colors.grey),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "Erric Hoffman",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
                    ),
                    Text(
                      'Interdum et malesuada fames ac ante ipsum primis in faucibus. Morbi ut nisi odio. Nulla facilisi.Nunc risus massa, gravida id egestas ',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: const Color.fromARGB(255, 174, 174, 174)),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: double.infinity,
                height: 50, // Set your desired width
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddtoCartScreen()),
                    );
                  },
                  child: Text(
                    "Go to cart",
                    style: TextStyle(fontSize: 19, color: Colors.white),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Change the color to blue
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
