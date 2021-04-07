import 'package:avataaar_image/avataaar_image.dart';
import 'package:flutter/material.dart';

void main() => runApp(AvataaarExample());

class AvataaarExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Avataaars'), centerTitle: true),
        body: ExampleBody(),
      ),
    );
  }
}

class ExampleBody extends StatefulWidget {
  @override
  _ExampleBodyState createState() => _ExampleBodyState();
}

class _ExampleBodyState extends State<ExampleBody> {
  Avataaar? _avatar;

  @override
  void initState() {
    super.initState();
    _randomizeAvatar();
  }

  void _randomizeAvatar() => _avatar = Avataaar.random();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Column(children: [
        Expanded(
          child: Container(
            alignment: Alignment.center,
            child: Container(
              width: 128,
              child: AvataaarImage(
                avatar: _avatar,
              ),
            ),
          ),
        ),
        IconButton(
          iconSize: 48.0,
          icon: Icon(Icons.refresh),
          onPressed: () => setState(_randomizeAvatar),
        ),
      ]),
    );
  }
}
