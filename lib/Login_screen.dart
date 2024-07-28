import 'package:flutter/material.dart';
import 'package:medicalapp/home1.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController textController = TextEditingController();
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 100,
                width: 100,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Color.fromARGB(255, 244, 244, 244),
                  child: Container(
                    height: 100,
                    width: 100,
                    child: Image.asset('assets/images/Vector.png'),
                  ),
                ),
              ),
              SizedBox(height: 25),
              Text(
                "Quick Medical",
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 50),
              Container(
                height: 50,
                width: 320,
                child: Text(
                  "Please enter your phone number to login or Signup your account",
                  style: TextStyle(
                      fontSize: 16, color: Color.fromARGB(255, 136, 136, 136)),
                ),
              ),
              SizedBox(height: 25),
              Container(
                height: 50,
                width: 320,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: textController,
                  style: TextStyle(fontSize: 17),
                  decoration: InputDecoration(
                    hintText: "+92 3111801579",
                    hintStyle: TextStyle(
                        fontSize: 16,
                        color: const Color.fromARGB(255, 213, 213, 213)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              InkWell(
                onTap: () {
                  if (textController.text == "03162883238") {
                      Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomeScreen1()),
                      (Route<dynamic> route) => false,
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text("Error"),
                        content: Text("Your number is incorrect."),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: Text("OK"),
                          ),
                        ],
                      ),
                    );
                  }
                },
                child: Container(
                  height: 50,
                  width: 334,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 34, 139, 252),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: Center(
                      child: Text(
                    "Continue",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
