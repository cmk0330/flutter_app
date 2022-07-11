import 'package:flutter/material.dart';
import 'package:flutter_app/model/ModelDemo.dart';

class ViewModelDemo extends ChangeNotifier {

  ModelDemo _model = ModelDemo();

  dynamic get(String id) async {
    var result = await _model.get(id);
    return result;
  }
}