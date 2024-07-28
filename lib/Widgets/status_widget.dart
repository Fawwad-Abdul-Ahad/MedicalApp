import 'package:flutter/material.dart';
import 'package:medicalapp/contants/color.dart';

class StatusWidget extends StatefulWidget {
  const StatusWidget({super.key});

  @override
  State<StatusWidget> createState() => _StatusWidgetState();
}

class _StatusWidgetState extends State<StatusWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromARGB(13, 255, 162, 0)  ,
                width: double.infinity,
                height: 200,
                child: Row(
                  children: [
                    Container(
                      width: 140,
                      height: double.infinity,
                      // color: Color.fromARGB(255, 255, 255, 255),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  "4.4",
                                  style: TextStyle(fontSize: 50),
                                ),
                                // Image.asset("assets/iamges/star.png")
                              ],
                            ),
                          ),
                          // SizedBox(height: 0,),
                          Text(
                            "923 Ratings and 257 Reviews",
                            style: TextStyle(
                                fontSize: 18,
                                color:
                                    Color.fromARGB(255, 155, 155, 155)),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: double.infinity,
                      width: 210,
                      padding: EdgeInsets.all(14),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: double.infinity,
                            height: 20,
                            child: Row(
                              children: [
                                Text("4",style: TextStyle(fontSize: 16),),
                                SizedBox(
                                  width: 6,
                                ),
                                Container(
                                  width: 80,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    color: pColor,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                SizedBox(width: 30,),
                                Text(
                                  "67%",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey,fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),

                          Container(
                            width: double.infinity,
                            height: 20,
                            child: Row(
                              children: [
                                Text("4",style: TextStyle(fontSize: 16),),
                                SizedBox(
                                  width: 6,
                                ),
                                Container(
                                  width: 40,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    color: pColor,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                SizedBox(width: 70,),
                                Text(
                                  "20%",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey,fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),

                          Container(
                            width: double.infinity,
                            height: 20,
                            child: Row(
                              children: [
                                Text("3",style: TextStyle(fontSize: 16),),
                                SizedBox(
                                  width: 6,
                                ),
                                Container(
                                  width: 80,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 235, 235, 235),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                SizedBox(width: 30,),
                                Text(
                                  "7%",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey,fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),

                          Container(
                            width: double.infinity,
                            height: 20,
                            child: Row(
                              children: [
                                Text("2",style: TextStyle(fontSize: 16),),
                                SizedBox(
                                  width: 6,
                                ),
                                Container(
                                  width: 80,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 235, 235, 235),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                SizedBox(width: 30,),
                                Text(
                                  "0%",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey,fontWeight: FontWeight.w700),
                                )
                              ],
                            ),
                          ),

                          Container(
                            width: double.infinity,
                            height: 20,
                            child: Row(
                              children: [
                                Text("1",style: TextStyle(fontSize: 16),),
                                SizedBox(
                                  width: 6,
                                ),
                                Container(
                                  width: 30,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    color: pColor,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                                SizedBox(width: 80,),
                                Text(
                                  "2%",
                                  style: TextStyle(
                                      fontSize: 16, color: Colors.grey,fontWeight: FontWeight.w700),
                                )
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