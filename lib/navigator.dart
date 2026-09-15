import 'package:flutter/material.dart';
import 'package:my_app/fblogin.dart';
import 'package:my_app/findaccount.dart';
import 'package:my_app/lastride.dart';
import 'package:my_app/newaccount.dart';

class Navigator extends StatefulWidget {
  const Navigator({super.key});

  @override
  State<Navigator> createState() => _NavigatorState();
}

class _NavigatorState extends State<Navigator> {
  int selectedindex = 0;
  List pages = [AppBar(), Findaccount(), Fblogin(), Newaccount(), Lastride()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 80,
        decoration: BoxDecoration(
          color: Colors.black,
          boxShadow: [
            BoxShadow(color: Colors.pink, blurRadius: 10, offset: Offset(1, 2)),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(150),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.blue,
            selectedItemColor: const Color.fromARGB(255, 233, 61, 118),
            unselectedItemColor: Colors.white,
            currentIndex: selectedindex,
            onTap: (int index) {
              setState(() {
                selectedindex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.login_rounded),
                label: "Insta Login",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.facebook_outlined),
                label: "Facebook Login",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_outlined),
                label: "Find Account",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_balance_sharp),
                label: "New Account",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.last_page_outlined),
                label: "Last Ride",
              ),
            ],
          ),
        ),
      ),
      body: pages[selectedindex],
    );
  }
}
