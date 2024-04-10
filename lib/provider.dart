import 'package:flutter/foundation.dart';

class ThemeProvider with ChangeNotifier{

  bool? istheme = false;

  set setTheme(value) {
    istheme = value;
    notifyListeners();
  }

  get getTheme {
    return istheme;
  }


}