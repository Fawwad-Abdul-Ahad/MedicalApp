import 'package:flutter/material.dart';

class PackageContainer extends StatelessWidget {
  const PackageContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
                      height: 100,
                      width: 500,
                      child: 
                      Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 238, 238, 238),
                              borderRadius: BorderRadius.circular(8),
                              border: Border.all(
                                color: Colors.orange,
                                width: 2
                              )
                            ),
                            child: 
                            Column(
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
                                  style: TextStyle(color: Colors.orange,fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20,),
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
                            child: 
                            Column(
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
                                  style: TextStyle(color: const Color.fromARGB(255, 134, 134, 134),fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 20,),
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
                            
                            child: 
                            Column(
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
                                  "300 pellets",
                                  style: TextStyle(color: const Color.fromARGB(255, 134, 134, 134),fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                  );
  }
}