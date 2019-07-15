import 'package:flutter/material.dart';

import 'ui/onbording.dart';
import 'ui/splash.dart';
import 'ui/movie_list.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PageViewIndicators Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(),
        '/onbording': (context) => OnBoardingPage(),
        '/main': (context) => MovieList(),
      },
    );
  }
}
