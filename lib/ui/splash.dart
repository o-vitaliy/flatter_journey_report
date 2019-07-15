import 'package:flutter/material.dart';

import '../blocs/onbording_bloc.dart';

class SplashPage extends StatefulWidget {
  @override
  State createState() => new SplashState();
}

class SplashState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();

    bloc.isOnbordingSeen
        .delay(Duration(seconds: 3))
        .doOnData((data) => bloc.setOnbordingSeen())
        .listen((seen) => _moveNext(seen), onError: (e) => print(e));
  }

  @override
  Widget build(BuildContext context) {
    return new Center(
      child: Column(children: <Widget>[
        Text("skip splash"),
        CircularProgressIndicator(),
      ]),
    );
  }

  void _moveNext(bool seen) {
    print(seen);
    if (seen)
      _showMain();
    else
      _showOnBording();
  }

  void _showMain() {
    print("to main");
    Navigator.pushNamed(context, '/main');
  }

  void _showOnBording() {
    print("to onbording");
    Navigator.pushNamed(context, '/onbording');
  }
}
