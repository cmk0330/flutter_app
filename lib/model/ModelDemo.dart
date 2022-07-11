import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ModelDemo {
  
  dynamic get(String page) async {
    var result = await Dio().get("https://www.wanandroid.com/article/list/$page/json");
    return result;
  }
}