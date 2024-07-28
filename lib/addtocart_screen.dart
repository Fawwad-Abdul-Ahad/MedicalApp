import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:medicalapp/Widgets/cart_widget.dart';
import 'package:medicalapp/contants/color.dart';
import 'package:medicalapp/data/functions.dart';
import 'package:medicalapp/home1.dart';

class AddtoCartScreen extends StatefulWidget {
  const AddtoCartScreen({super.key});

  @override
  State<AddtoCartScreen> createState() => _AddtoCartScreenState();
}

class _AddtoCartScreenState extends State<AddtoCartScreen> {
  @override
  Widget build(BuildContext context) {
    final int cartItemCount = Cart.length;

    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: pColor,
            size: 38,
          ),
        ),
        title: Text(
          "Cart",
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            if (cartItemCount > 0)
              Container(
                width: double.infinity,
                height: 70,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "$cartItemCount Items in your cart",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 153, 153, 153),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HomeScreen1()),
                        );
                      },
                      child: Row(
                        children: [
                          Icon(Icons.add, color: pColor, size: 24),
                          SizedBox(width: 6),
                          Text(
                            "Add more",
                            style: TextStyle(fontSize: 16, color: pColor),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: cartItemCount > 0
                    ? ListView.builder(
                        itemCount: cartItemCount,
                        itemBuilder: (context, index) {
                          final title = Cart[index];
                          final ProDetails = detailsByProName(title);
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10.0),
                            child: CartWidget(
                              proname: ProDetails['title'],
                              description: ProDetails['desc'],
                              price: ProDetails['price'],
                            ),
                          );
                        },
                      )
                    : Center(
                        child: Text(
                          "No items in Cart",
                          style: TextStyle(fontSize: 18, color: pColor),
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Map<String, dynamic> detailsByProName(String title) {
  if (title == "Sugar Free Gold") {
    return {
      'title': "Sugar Free Gold",
      'desc': "bottle of 500 Palletes",
      'price': '2500',
    };
  } else if (title == "CRAFTSMAN HOUSE 1") {
    return {
      'title': "Capeco organic",
      'desc': "bottle of 200 Palletes",
      'price': '2000',
    };
  } else {
    return {
      'title': 'Unknown',
      'desc': 'Unknown Description',
      'price': '0',
    };
  }
}
