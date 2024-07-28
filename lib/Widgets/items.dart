import 'package:flutter/material.dart';
import 'package:medicalapp/contants/color.dart';
import 'package:medicalapp/details_screen.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer(
      {super.key,
      required this.proName,
      required this.descName,
      required this.rupees});
  final String proName;
  final String descName;
  final String rupees;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
         Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const DetailsContianer()),
  );
      },
      child: Container(
        height: 260,
        width: 170,
        child: Column(
          children: [
            Container(
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(
                color: sColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12),
                  topLeft: Radius.circular(12),
                ),
              ),
              child: Image.asset('assets/images/prod_image.png'),
            ),
            Container(
              decoration: BoxDecoration(
              color: Color.fromARGB(234, 247, 247, 247),
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16)),
      
              ),
              padding: EdgeInsets.all(10),
              height: 90,
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    proName,
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    descName,
                    style: TextStyle(fontSize: 12),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Text(
                    rupees,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
