import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LanguageProvider with ChangeNotifier {
  bool _isEn = true;


// give the word same sympol to get the word in deferent language
  Map<String, Object> _txtAr = {};
  Map<String, Object> _txtEn = {};

// change the language and save the last choice
  changeLan(bool toggle) async{
    _isEn = toggle;
    notifyListeners();
    SharedPreferences _prefs = await SharedPreferences.getInstance();
  _prefs.setBool("isEn", _isEn);
  }


// get the last choice
  getLan() async{
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  _isEn = _prefs.getBool("isEn")??true;
  notifyListeners();
  }

// get the word 
  Object getTxt(String word) {
    return _isEn ? _txtEn[word] : _txtAr[word];
  }
}
