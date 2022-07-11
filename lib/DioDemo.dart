import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/util/Net.dart';

class DioDemo extends StatefulWidget {
  const DioDemo({Key? key}) : super(key: key);

  @override
  State<DioDemo> createState() => _DioDemoState();
}

class _DioDemoState extends State<DioDemo> {
  String _response = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("dioDemo"),
        ),
        body: Column(
          children: [
            TextButton(
                onPressed: () {
                  _getRequest();
                },
                child: Text(
                  "请求",
                  style: TextStyle(fontSize: 24.0),
                )),
            Text(_response)
          ],
        ));
  }

  void _getRequest() async {
    var result = await Net.instance.dio.get("/article/list/1/json1");
    print(result.data.toString());
  }
}
