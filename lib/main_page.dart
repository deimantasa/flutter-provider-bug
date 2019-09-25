import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bottom_navigation_bar_bloc.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final BottomNavigationBarBloc bottomNavigationBarBloc = Provider.of<BottomNavigationBarBloc>(context);

    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: bottomNavigationBarBloc.bottomNavigationBarSelectedIndex,
            onTap: (index) {
              bottomNavigationBarBloc.bottomNavigationBarSelectedIndex = index;
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.bug_report), title: Text("First Page")),
              BottomNavigationBarItem(icon: Icon(Icons.bug_report), title: Text("Second Page"))
            ]),
        body: bottomNavigationBarBloc.currentTab[bottomNavigationBarBloc.bottomNavigationBarSelectedIndex]);
  }
}
