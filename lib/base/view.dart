import 'package:flutter/material.dart';

AppBar getAppBar(BuildContext context, String tilte) {
  return AppBar(
    title: Text(
      tilte,
    ),
    centerTitle: true,
    leading: IconButton(
      icon: Icon(Icons.arrow_back_ios),
      onPressed: () {
        Navigator.of(context).pop("/");
      },
    ),
  );
}
