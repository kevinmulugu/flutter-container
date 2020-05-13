import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  debugPaintSizeEnabled = false;
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter demo app',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter layour app'),
        ),
        body: Center(
          child: _buildImageColumn(),
        ),
      ),
    );
  }

  Widget _buildImageColumn() => Container(
    decoration: BoxDecoration(
      color: Colors.black26
    ),
    child: Column(
      children: <Widget>[
        _buildImageRow(1),
        _buildImageRow(3),
      ],
    ),
  );

  Widget _buildDecoratedImage(int imageIndex) => Expanded(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 10, color: Colors.black38),
          borderRadius: BorderRadius.all(Radius.circular(16.0)),
        ),
        margin: const EdgeInsets.all(4.0),
        child: Image.asset(
          'images/pic$imageIndex.jpg',
          fit: BoxFit.cover,
        ),
      )
  );

  Widget _buildImageRow(int imageIndex) => Row(
    children: <Widget>[
      _buildDecoratedImage(imageIndex),
      _buildDecoratedImage(imageIndex + 1),
    ],
  );
}

