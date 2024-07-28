import 'package:flutter/material.dart';
import 'package:medicalapp/contants/color.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key,required this.proname,
  required this.description, required this.price});
  final String proname;
  final String description;
  final String price;



  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      // padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.asset(
              'assets/images/proimage1.png',
              width: 100.0,
              height: 100.0,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 12.0),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        proname,
                        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      ),
                      Text(
                        description,
                        style: TextStyle(color: const Color.fromARGB(255, 158, 158, 158)),
                      ),
                    ],
                  ),
                  Text(
                   price,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 6),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 14,
                  child: Icon(Icons.cancel_outlined, color: pColor),
                ),
                SizedBox(height: 8),
                Container(
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 238, 248, 255),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(

                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 192, 227, 255),
                        radius: 14,
                        child: Icon(Icons.remove, color: const Color.fromARGB(255, 0, 75, 136), size: 26),
                      ),
                      SizedBox(width: 8),
                      Text("2", style: TextStyle(fontSize: 18)),
                      SizedBox(width: 14),
                      CircleAvatar(
                         backgroundColor: Color.fromARGB(255, 149, 207, 255),
                        radius: 14,
                        child: Icon(Icons.add, color: const Color.fromARGB(255, 0, 85, 154), size: 26),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
