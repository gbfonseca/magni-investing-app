import 'package:flutter_modular/flutter_modular.dart';
import 'package:ezwallet_mobile/app/modules/signin/signin_store.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatefulWidget {
  final String title;
  const SigninPage({Key? key, this.title = 'SigninPage'}) : super(key: key);
  @override
  SigninPageState createState() => SigninPageState();
}
class SigninPageState extends State<SigninPage> {
  final SigninStore store = Modular.get();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[],
      ),
    );
  }
}