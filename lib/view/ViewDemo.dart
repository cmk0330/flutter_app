import 'package:flutter/material.dart';
import 'package:flutter_app/viewmodel/ViewModelDemo.dart';
import 'package:provider/provider.dart';


class MvvmDemo extends StatefulWidget {
  const MvvmDemo({Key? key}) : super(key: key);

  @override
  State<MvvmDemo> createState() => _MvvmDemoState();
}

class _MvvmDemoState extends State<MvvmDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("mvvm_view"),
      ),
      body: Column(
        children: [
          TextButton(onPressed: () async {
           var result =  context.read<ViewModelDemo>().get("0");
          }, child: Text("mvvm请求")
          ),
          Text("")
        ],
      ),
    );
  }
}
