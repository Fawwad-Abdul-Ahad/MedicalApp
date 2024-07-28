import 'package:flutter/material.dart';
import 'package:medicalapp/Login_screen.dart';

class WalkthroughScreen1 extends StatelessWidget {
  const WalkthroughScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(255, 255, 255, 255),
      width: double.infinity,
      height: double.infinity,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const LoginScreen()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 250.0),
                child: Container(
                  height: 30,
                  width: 50,
                  child: Text(
                    "Skip",
                    style: TextStyle(fontSize: 22),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Image.network(
                "https://img.freepik.com/premium-vector/male-doctor-medical-check-up_828072-392.jpg"),
            Container(
              padding: EdgeInsets.all(12),
              child: Text(
                'Welcome to Quick Medical!\n\n'
                'Your health is our priority. Our medical check-up service offers a comprehensive '
                'evaluation of your overall health to ensure you stay on top of your well-being. '
                'Schedule your appointment today and take the first step towards a healthier life.',
                style: TextStyle(fontSize: 18, color: Colors.black),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
