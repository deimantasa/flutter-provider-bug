import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_release_bug/second_page.dart';

import 'home_store.dart';
import 'loading_state.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  HomeStore _homeStore;

  @override
  Widget build(BuildContext context) {
    _homeStore = Provider.of<HomeStore>(context);
    return Scaffold(body: getWidgets());
  }

  @override
  void initState() {
    Provider.of<HomeStore>(context, listen: false).updateText();
    super.initState();
  }

  Widget getWidgets() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Progress bar should disappear in 5s'),
          _homeStore.loadingState == LoadingState.loading ? CircularProgressIndicator() : Container(),
        ],
      ),
    );
  }
}
