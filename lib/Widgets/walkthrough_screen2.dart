import 'package:flutter/material.dart';

class Walkthroughscreen2 extends StatelessWidget {
  const Walkthroughscreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  width: MediaQuery.of(context).size.width * .23,
                  height: 39,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                        onTap: (){
                          
                        },
                         child: Padding(
                           padding: const EdgeInsets.only(left :250.0),
                           child: Container(
                            
                            height: 30,
                            width: 50,
                            child: Text("Skip",style: TextStyle(fontSize: 22),),
                           ),
                         ),
                       ),
                        SizedBox(height: 58,),
                        Image.network('https://static.vecteezy.com/system/resources/previews/002/139/534/original/online-healthcare-and-medical-concept-of-doctor-illustration-medicine-consultation-and-treatment-via-application-of-smartphone-or-computer-connected-internet-clinic-vector.jpg'),
                        Container(
                          height: 300,
                          width: double.infinity,
                          padding: EdgeInsets.all(16),
                          child: Text("With HealthCheck, you can quickly assess your health from the comfort of your home. Our online check-up will guide you through a series of questions to evaluate your current health status and provide personalized recommendations.",style: TextStyle(fontSize: 18, color: Colors.black, ), textAlign: TextAlign.center,),
                        ),
                      ],
                    ),
                  ),
                  
                );
  }
}