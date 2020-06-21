import 'package:flutter/material.dart';

const _colorPaige = Color.fromRGBO(255, 236, 207, 1);
const _colorDianne = Color.fromRGBO(35, 77, 96, 1);

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: _colorPaige,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: DrawClip(),
                  child: Container(
                    height: size.height * 0.85,
                    color: _colorDianne,
                  ),
                ),
                Positioned(
                    left: 12.0,
                    top: 100.0,
                    child: Image.asset('images/cube1.png',
                        width: 190.0, height: 190.0)),
              ],
            ),
          ],
        ));
  }
}

class DrawClip extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(0, 5.0);
    path.lineTo(size.width * 0.2, size.height * 0.1);
    path.lineTo(size.width * 0.2, size.height * 0.34);
    path.lineTo(size.width * 0.49, size.height * 0.48);
    path.lineTo(size.width * 0.85, size.height * 0.39);
    path.lineTo(size.width, size.height * 0.46);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
