import 'package:flutter/material.dart';

import 'loading_state.dart';

class HomeStore extends ChangeNotifier {
  LoadingState _loadingState = LoadingState.notLoading;

  LoadingState get loadingState => _loadingState;

  set loadingState(LoadingState loadingState) {
    _loadingState = loadingState;
    notifyListeners();
  }

  Future updateText() async {
    loadingState = LoadingState.loading;
    await Future.delayed(Duration(seconds: 5));
    loadingState = LoadingState.notLoading;
  }
}
