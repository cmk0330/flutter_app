import 'package:flutter/material.dart';

class NavigatorDemo extends StatefulWidget {
  const NavigatorDemo({Key? key}) : super(key: key);

  @override
  State<NavigatorDemo> createState() => _NavigatorDemoState();
}

class _NavigatorDemoState extends State<NavigatorDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("路由"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed("listView");
              },
              child: const Text("listview")),
          Padding(padding: EdgeInsets.only(top: 12.0)),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed("provider");
              },
              child: const Text("provider")),
          Padding(padding: EdgeInsets.only(top: 12.0)),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed("http_dio");
              },
              child: const Text("http_dio")),
          Padding(padding: EdgeInsets.only(top: 12.0)),
          TextButton(
              onPressed: () {
                Navigator.of(context).pushNamed("mvvm_demo");
              },
              child: const Text("mvvm_demo"))
        ],
      ),
    );
  }
}
