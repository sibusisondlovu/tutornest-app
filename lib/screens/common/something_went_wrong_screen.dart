import 'package:flutter/material.dart';

class SomethingWentWrongScreen extends StatefulWidget {
  const SomethingWentWrongScreen({Key key}) : super(key: key);

  @override
  _SomethingWentWrongScreenState createState() => _SomethingWentWrongScreenState();
}

class _SomethingWentWrongScreenState extends State<SomethingWentWrongScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: Center(child: Text('Something went wrong, please close app and try again')),
    ));
  }
}
