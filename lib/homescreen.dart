import 'package:flutter/material.dart';
import 'package:medicalapp/Widgets/walkthrough_screen01.dart';
import 'package:medicalapp/Widgets/walkthrough_screen2.dart';
import 'package:medicalapp/Widgets/walkthrough_screen3.dart';
import 'package:medicalapp/Widgets/walkthrough_screen4.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        initialIndex: 0,
        length: 4,
        child: Column(
          children: [
            Expanded(
              child: TabBarView(
                children: [
                  WalkthroughScreen1(),
                  Walkthroughscreen2(),
                  Walkthroughscreen3(),
                  Walkthroughscreen4(),
                ],
              ),
            ),
            Container(
              width: 200,
              height: 50,
              color: const Color.fromARGB(255, 255, 250, 250),
              child: TabBar(
                tabs: [
                  Tab(
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 217, 217, 217),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 217, 217, 217),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 217, 217, 217),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  Tab(
                    child: Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 217, 217, 217),
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
