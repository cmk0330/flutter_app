import 'package:flutter/material.dart';

class ListViewDemo extends StatefulWidget {
  const ListViewDemo({Key? key}) : super(key: key);

  @override
  State<ListViewDemo> createState() => _ListViewDemoState();
}

class _ListViewDemoState extends State<ListViewDemo> {
  bool isShow = false;
  List<int> list = [];
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(_controller);
    _controller.addListener(() {
      if (_controller.offset > 200 && !isShow) {
        setState(() {
          isShow = true;
        });
      } else if (_controller.offset <= 200 && isShow) {
        setState(() {
          isShow = false;
        });
      }
      print(_controller);
    });

    for (int i = 0; i < 100; i++) {
      list.add(i);
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("滑动列表"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          onPressed: () {
            Navigator.of(context).pop("/");
          },
        ),
        centerTitle: true,
      ),
      floatingActionButton: isShow
          ? FloatingActionButton(
              child: Icon(Icons.add),
              onPressed: () {
                _controller.animateTo(0,
                    duration: Duration(seconds: 1), curve: Curves.ease);
              },
            )
          : null,
      body: Container(
        child: RefreshIndicator(
          onRefresh: _onRefresh,
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Text(list[index].toString());
            },
            itemCount: list.length,
            controller: _controller,
          ),
        ),
      ),
    );
  }

  Future _onRefresh() async {
    await Future.delayed(const Duration(seconds: 2), () {
      print(":----");
    });
    return '';
  }
}
