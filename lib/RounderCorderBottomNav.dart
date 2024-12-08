import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenThree extends StatefulWidget {
  const HomeScreenThree({Key? key}) : super(key: key);

  @override
  _HomeScreenThreeState createState() => _HomeScreenThreeState();
}

class _HomeScreenThreeState extends State<HomeScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Custom Bottom Navigation"),
      ),
      body: Container(),
      bottomNavigationBar: Container(
        height: 70,
        child: Container(
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)),
              boxShadow: [
                BoxShadow(blurRadius: 20, color: Colors.grey, spreadRadius: 1)
              ]),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildContainerBottomNav(Icons.person),
              buildContainerBottomNav(Icons.shopping_bag),
              buildContainerBottomNav(Icons.home, isSelected: true),
              buildContainerBottomNav(Icons.favorite),
              buildContainerBottomNav(Icons.settings),
            ],
          ),
        ),
      ),
    );
  }

  Container buildContainerBottomNav(IconData icon, {isSelected = false}) {
    return Container(
      decoration: BoxDecoration(
        color: isSelected ? Colors.pinkAccent : Colors.white,
        shape: BoxShape.circle,
        boxShadow: isSelected
            ? [
                BoxShadow(color: Colors.grey, blurRadius: 20, spreadRadius: 1),
              ]
            : [],
      ),
      height: 50,
      width: 50,
      child: Icon(icon, color: isSelected ? Colors.white : Colors.black),
    );
  }
}
