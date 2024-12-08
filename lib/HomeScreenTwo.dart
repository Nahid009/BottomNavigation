import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreenTwo extends StatefulWidget {
  @override
  _HomeScreenStateTwo createState() => _HomeScreenStateTwo();
}

@override
_HomeScreenStateTwo createState() {
  return _HomeScreenStateTwo();
}

class _HomeScreenStateTwo extends State<HomeScreenTwo> {
  var _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fab Button Bottom Navigation"),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              MaterialButton(
                onPressed: () {
                  setState(() {
                    _currentTab = 0;
                  });
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.dashboard,
                      color: _currentTab == 0 ? Colors.blue : Colors.grey,
                      size: 30.0,
                    )
                  ],
                ),
              ),
              MaterialButton(
                minWidth: 40,
                onPressed: () {
                  setState(() {
                    _currentTab = 0;
                  });
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                hoverColor: Colors.transparent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.dashboard,
                      color: _currentTab == 0 ? Colors.blue : Colors.grey,
                      size: 30.0,
                    )
                  ],
                ),
              ),
              Visibility(
                child: MaterialButton(
                  minWidth: 40,
                  onPressed: () {
                    _currentTab = 0;
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.dashboard,
                        color: _currentTab == 0 ? Colors.blue : Colors.grey,
                        size: 30.0,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
