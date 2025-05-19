
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage()
  )
);

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController? _pageController;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(initialPage: 0)..addListener(_onScroll);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(),
          makePage(),
          makePage(),
        ],
      ),
    );
  }
  Widget makePage() {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/one.jpg') 
           fit: BoxFit.cover
          )
      ),
    );
  }
}
