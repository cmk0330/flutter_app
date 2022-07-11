import 'package:flutter/material.dart';
import 'package:flutter_app/DioDemo.dart';
import 'package:flutter_app/NavigatorDemo.dart';
import 'package:flutter_app/provider/CoutProvider.dart';
import 'package:flutter_app/router/Routes.dart';
import 'package:flutter_app/view/ViewDemo.dart';
import 'package:flutter_app/viewmodel/ViewModelDemo.dart';
import 'package:provider/provider.dart';

import 'PrividerDemo.dart';
import 'WidgetDemo.dart';

void main() {
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => CountProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => ViewModelDemo(),
      ),
    ], child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      routes: routers
      // {
      //   "/": (context) => NavigatorDemo(),
      //   "listView": (context) => ListViewDemo(),
      //   "provider": (context) => ProviderDemo(),
      //   "http_dio": (context) => const DioDemo(),
      //   "mvvm_demo": (context) => const MvvmDemo(),
      // },
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
