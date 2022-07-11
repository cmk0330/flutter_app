import 'package:flutter/material.dart';

import '../base/view.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(context, "登录"),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Image.asset(
              "assets/images/ic_login_bg.jpg",
              width: double.infinity,
              height: 240,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 16,
            ),
            Form(
                child: Column(
              children: const [
                TextField(
                    decoration: InputDecoration(
                        labelText: "账号",
                        helperText: "用户名或者手机号",
                        icon: Icon(Icons.person)),
                    textInputAction: TextInputAction.next),
                TextField(
                  decoration: InputDecoration(
                      labelText: "密码",
                      helperText: "密码",
                      icon: Icon(Icons.lock)),
                  textInputAction: TextInputAction.send,
                  obscureText: true,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  "找回密码",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
