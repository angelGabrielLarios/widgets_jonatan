import 'package:flutter/material.dart';
import 'dart:math' as math;

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });
  final double minHeight;
  final double maxHeight;
  final Widget child;
  @override
  double get minExtent => minHeight;
  @override
  double get maxExtent => math.max(maxHeight, minHeight);
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return new SizedBox.expand(child: child);
  }

  @override
  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}

class CollapsingListImage extends StatelessWidget {
  SliverPersistentHeader makeHeader(String headerText) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: _SliverAppBarDelegate(
        minHeight: 60.0,
        maxHeight: 200.0,
        child: Container(
            color: Colors.blueAccent,
            child: Center(
                child: Text(
              headerText,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic),
            ))),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        makeHeader('La Liga'),
        SliverGrid.count(
          crossAxisCount: 3,
          children: [
            Container(
                color: Colors.red,
                child: Image(
                  image: NetworkImage(
                      'http://as01.epimg.net/img/comunes/fotos/fichas/equipos/large/3.png'),
                  height: 150,
                )),
            Container(
                color: Colors.indigo,
                child: Image(
                  image: NetworkImage(
                      'http://as01.epimg.net/img/comunes/fotos/fichas/equipos/large/42.png'),
                  height: 150,
                )),
            Container(
                color: Colors.yellow,
                child: Image.network(
                    "http://as01.epimg.net/img/comunes/fotos/fichas/equipos/large/2.png"),
                height: 150),
            Container(
                child: Image.network(
                    "http://as01.epimg.net/img/comunes/fotos/fichas/equipos/large/1.png"),
                height: 150),
            Container(
                color: Colors.tealAccent,
                child: Image.network(
                    "http://as01.epimg.net/img/comunes/fotos/fichas/equipos/large/5.png"),
                height: 150),
            Container(
                color: Colors.green,
                child: Image.network(
                    "http://as01.epimg.net/img/comunes/fotos/fichas/equipos/large/171.png"),
                height: 150),
            Container(
                color: Colors.purple,
                child: Image.network(
                    "http://as01.epimg.net/img/comunes/fotos/fichas/equipos/large/8.png"),
                height: 150),
            Container(
                color: Colors.cyan,
                child: Image.network(
                    "http://as01.epimg.net/img/comunes/fotos/fichas/equipos/large/16.png"),
                height: 150),
            Container(
                color: Colors.orange,
                child: Image.network(
                    "http://as01.epimg.net/img/comunes/fotos/fichas/equipos/large/17.png"),
                height: 150),
          ],
        ),
        makeHeader('Premier League'),
        SliverFixedExtentList(
          itemExtent: 150.0,
          delegate: SliverChildListDelegate(
            [
              Container(
                color: Colors.red,
                child: Image.network(
                    'http://as01.epimg.net/img/comunes/fotos/fichas/equipos/large/66.png'),
              ),
              Container(
                color: Colors.purple,
                child: Image.network(
                    'http://as01.epimg.net/img/comunes/fotos/fichas/equipos/large/65.png'),
              ),
              Container(
                color: Colors.green,
                child: Image.network(
                    'http://as01.epimg.net/img/comunes/fotos/fichas/equipos/large/54.png'),
              ),
              Container(
                color: Colors.orange,
                child: Image.network(
                    'http://as01.epimg.net/img/comunes/fotos/fichas/equipos/large/58.png'),
              ),
              Container(
                color: Colors.yellow,
                child: Image.network(
                    'http://as01.epimg.net/img/comunes/fotos/fichas/equipos/large/67.png'),
              ),
            ],
          ),
        ),
        makeHeader('Serie A'),
        SliverGrid(
          gridDelegate: new SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200.0,
            mainAxisSpacing: 10.0,
            crossAxisSpacing: 10.0,
            childAspectRatio: 2.0,
          ),
          delegate: new SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return new Container(
                alignment: Alignment.center,
                color: Colors.teal[100 * (index % 9)],
                child: new Image.asset("../img/teams/${index}.png"),
              );
            },
            childCount: 20,
          ),
        ),
        makeHeader('Ligue 1'),
        // Yes, this could also be a SliverFixedExtentList. Writing
        // this way just for an example of SliverList construction.
        SliverList(
          delegate: SliverChildListDelegate(
            [
              Container(
                  color: Colors.indigo,
                  child: Image.network(
                      'http://as01.epimg.net/img/comunes/fotos/fichas/equipos/large/49.png'),
                  height: 150.0),
              Container(
                  color: Colors.cyan,
                  child: Image.network(
                      'http://as01.epimg.net/img/comunes/fotos/fichas/equipos/large/106.png'),
                  height: 150.0),
              Container(
                  color: Colors.pink,
                  child: Image.network(
                      'https://upload.wikimedia.org/wikipedia/en/thumb/c/cf/LogoASMonacoFC2021.svg/1200px-LogoASMonacoFC2021.svg.png'),
                  height: 150.0),
              Container(
                  color: Colors.blue,
                  child: Image.network(
                      'https://tmssl.akamaized.net/images/wappen/big/1082.png?lm=1529521041'),
                  height: 150.0),
            ],
          ),
        ),
      ],
    );
  }
}
