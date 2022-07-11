import 'package:flutter/material.dart';
import 'package:flutter_app/view/LoginView.dart';

Map<String, WidgetBuilder> routers = {
  "/":(BuildContext context) => const LoginView(),
};