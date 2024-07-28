import 'package:flutter/material.dart';

class Walkthroughscreen3 extends StatelessWidget {
  const Walkthroughscreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                  color: const Color.fromARGB(255, 255, 255, 255),
                  width:double.infinity,
                  height: double.infinity,
                   child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                        onTap: (){
                          
                        },
                         child: Padding(
                           padding: const EdgeInsets.only(left :250.0, top: 30),
                           child: Container(
                            
                            height: 30,
                            width: 50,
                            child: Text("Skip",style: TextStyle(fontSize: 22),),
                           ),
                         ),
                       ),
                        SizedBox(height: 16,),
                        Image.network('https://img.freepik.com/premium-vector/online-medicine-flat-design-concept-illustration_198565-66.jpg'),
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