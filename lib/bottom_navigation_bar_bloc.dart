import 'package:flutter/cupertino.dart';
import 'package:provider_release_bug/first_page.dart';
import 'package:provider_release_bug/second_page.dart';

class BottomNavigationBarBloc extends ChangeNotifier {
  int _bottomNavigationBarSelectedIndex = 0;

  int get bottomNavigationBarSelectedIndex => _bottomNavigationBarSelectedIndex;

  set bottomNavigationBarSelectedIndex(int bottomNavigationBarSelectedIndex) {
    _bottomNavigationBarSelectedIndex = bottomNavigationBarSelectedIndex;
    notifyListeners();
  }

  var currentTab = [FirstPage(), SecondPage()];
}
