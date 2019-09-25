import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_release_bug/bottom_navigation_bar_bloc.dart';
import 'package:provider_release_bug/home_store.dart';
import 'package:provider_release_bug/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<HomeStore>.value(value: HomeStore()),
        ChangeNotifierProvider<BottomNavigationBarBloc>.value(value: BottomNavigationBarBloc())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: MainPage(),
      ),
    );
  }
}
