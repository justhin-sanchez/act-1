import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

void main() => runApp(
  MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(fontFamily: 'Nunito'),
    home: HomePage(),
  ),
);

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;
  int totalPage = 4;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(initialPage: 0)..addListener(_onScroll);

    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
            page: 1,
            image:
                'https://github.com/justhin-sanchez/act-1/blob/main/assets/images/pastor.jpg?raw=true',
            title: 'Pastor',
            description:
                'Tenemos la mejor carne de pastor de la ciudad, recien echa y muy rica!',
          ),
          makePage(
            page: 2,
            image:
                'https://github.com/justhin-sanchez/act-1/blob/main/assets/images/tacos.jpg?raw=true',
            title: 'Tacos',
            description: 'Los mejores tacos del mundo!',
          ),
          makePage(
            page: 3,
            image:
                'https://github.com/justhin-sanchez/act-1/blob/main/assets/images/aguas.jpg?raw=true',
            title: 'Aguas fescas',
            description:
                "Consigue una mejor experiencia en nuestro local probando nuestras ricas aguas frescas!",
          ),
          makePage(
            page: 4,
            image:
                'https://github.com/justhin-sanchez/act-1/blob/main/assets/images/taquizas.jpg?raw=true',
            title: 'Taquizas',
            description:
                "Nos especializamos en las taquizas, brindar nuestro servicio y sabor hasta donde se ubique tu evennto!",
          ),
        ],
      ),
    );
  }

  Widget makePage({image, title, description, page}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.3, 0.9],
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.2),
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  FadeInUp(
                    child: Text(
                      page.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    '/' + totalPage.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeInUp(
                      child: Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          height: 1.2,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    FadeInUp(
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 5),
                            child: Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 15,
                            ),
                          ),
                          Text('4.0', style: TextStyle(color: Colors.white70)),
                          Text(
                            '(2300)',
                            style: TextStyle(
                              color: Colors.white38,
                              fontSize: 12,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    FadeInUp(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Text(
                          description,
                          style: TextStyle(
                            color: Colors.white.withOpacity(.7),
                            height: 1.9,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    FadeInUp(
                      child: Text(
                        'READ MORE',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(height: 30),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
