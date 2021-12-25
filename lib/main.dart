import 'package:flutter/material.dart';
import 'constants.dart';
import 'homescreen.dart';
void main()
{
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primarycolor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: textcolor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        scaffoldBackgroundColor: bgcolor
      ),
      home: HomeScreen(),
    );
  }
}
