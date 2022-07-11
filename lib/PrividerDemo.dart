import 'package:flutter/material.dart';
import 'package:flutter_app/provider/CoutProvider.dart';
import 'package:provider/provider.dart';

class ProviderDemo extends StatefulWidget {
  const ProviderDemo({Key? key}) : super(key: key);

  @override
  State<ProviderDemo> createState() => _ProviderDemoState();
}

class _ProviderDemoState extends State<ProviderDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("provider"),
        centerTitle: true,

      ),
      body: Text(Provider.of<CountProvider>(context).count.toString()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CountProvider>().add();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
