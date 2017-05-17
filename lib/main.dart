import 'dart:ui' show ImageFilter;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new IosDemoApp());
}

const Color _blue = const Color(0xFF007AFF);
const Color _gray = const Color(0xFF929292);

class IosDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: _blue,
        accentColor: _gray,
      ),
      title: 'iOS Demo',
      home: new Scaffold(
        body: new Stack(
          children: <Widget>[
            new ListView(
              children:
                buildHeader()
                    ..addAll(buildControl())
                    ..addAll(buildComments())
            ),
            new BackdropFilter(
              filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
            ),
            new Align(
              alignment: FractionalOffset.topCenter,
              child: new IosAppBar(),
            ),
            new Align(
              alignment: FractionalOffset.bottomCenter,
              child: new IosBottomBar(),
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> buildHeader() {
  return <Widget>[
    const Padding(
      padding: const EdgeInsets.only(left: 16.0, top: 16.0),
      child: const Text(
        'Add Neural Reading Functions via Implant Interface #204',
        style: const TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
    const Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 16.0),
      child: const DecoratedBox(decoration: const BoxDecoration(
        border: const Border(top: const BorderSide(
          color: const Color(0xFFBBBBBB),
        )),
      )),
    ),
  ];
}

List<Widget> buildControl() {
  return <Widget>[
    new Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        new Padding(
          padding: const EdgeInsets.all(16.0),
          child: new DecoratedBox(
            decoration: new BoxDecoration(
              borderRadius: const BorderRadius.all(const Radius.circular(8.0)),
              border: new Border.all(color: const Color(0xAAAACCEE)),
              color: const Color(0xAAF0FAFF),
            ),
            child: new Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Reviewers',
                    style: const TextStyle(
                      // fontSize: 24.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  new Padding(
                    padding: const EdgeInsets.only(top: 12.0, right: 3.0),
                    child: new Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new Column(
                          children: <Widget>[
                            const CircleAvatar(
                              backgroundImage: const AssetImage('assets/reviewer1.jpeg'),
                              radius: 22.0,
                            ),
                            const Icon(Icons.done, color: const Color(0xDD66DD44)),
                          ],
                        ),
                        const Padding(padding: const EdgeInsets.only(left: 8.0)),
                        new Column(
                          children: <Widget>[
                            const CircleAvatar(
                              backgroundImage: const AssetImage('assets/reviewer2.jpg'),
                              radius: 22.0,
                            ),
                            const Padding(padding: const EdgeInsets.only(top: 4.0)),
                            const Icon(
                              Icons.chat_bubble_outline,
                              color: const Color(0xDDDBAB09),
                              size: 20.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        new Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            new Container(
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                border: new Border.all(color: _blue),
              ),
              margin: const EdgeInsets.only(right: 12.0),
              padding: const EdgeInsets.all(4.0),
              child: const Image(
                image: const AssetImage('assets/plus.png'),
                color: _blue,
                width: 25.0,
              ),
            ),
            new Container(
              decoration: new BoxDecoration(
                shape: BoxShape.circle,
                border: new Border.all(color: _blue),
              ),
              margin: const EdgeInsets.only(right: 16.0),
              padding: const EdgeInsets.all(4.0),
              child: const Image(
                image: const AssetImage('assets/up.png'),
                color: _blue,
                width: 25.0,
              ),
            ),
          ],
        ),
      ],
    ),
    const Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18.0, top: 4.0),
    ),
  ];
}

List<Widget> buildComments() {
  return <Widget>[
    new Row(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: <Widget> [
        new Container(
          decoration: const BoxDecoration(
            borderRadius: const BorderRadius.all(const Radius.circular(18.0)),
            color: _blue,
          ),
          margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
          child: const Text(
            'Hey guys, check this out',
            style: const TextStyle(
              color: Colors.white,
              letterSpacing: -0.4,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        new Container(
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            gradient: new LinearGradient(
              begin: FractionalOffset.topLeft,
              colors: <Color>[const Color(0xFFA4A9B8), const Color(0xFF858993)],
            ),
          ),
          margin: const EdgeInsets.only(right: 8.0),
          padding: const EdgeInsets.all(16.0),
          child: new Text(
            'OG',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13.0,
              fontWeight: FontWeight.w500,
            ),
          )
        ),
      ],
    ),
    new Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget> [
        new Container(
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            gradient: new LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: <Color>[const Color(0xFFFD5015), const Color(0xFFC72008)],
            ),
          ),
          margin: const EdgeInsets.only(left: 8.0),
          padding: const EdgeInsets.all(16.0),
          child: new Text(
            'LA',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13.0,
              fontWeight: FontWeight.w500,
            ),
          )
        ),
        new Container(
          decoration: const BoxDecoration(
            borderRadius: const BorderRadius.all(const Radius.circular(18.0)),
            color: const Color(0xFFE5E5EA),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
          child: const Text(
            'Wow, that\'s pretty impressive. Good job!',
            style: const TextStyle(
              color: Colors.black,
              letterSpacing: -0.4,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    ),
    new Row(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: <Widget> [
        new Container(
          decoration: const BoxDecoration(
            borderRadius: const BorderRadius.all(const Radius.circular(18.0)),
            color: _blue,
          ),
          margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
          child: const Text(
            'Yup, I paid 5 Levandowskis for it',
            style: const TextStyle(
              color: Colors.white,
              letterSpacing: -0.4,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        new Container(
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            gradient: new LinearGradient(
              begin: FractionalOffset.topLeft,
              colors: <Color>[const Color(0xFFA4A9B8), const Color(0xFF858993)],
            ),
          ),
          margin: const EdgeInsets.only(right: 8.0),
          padding: const EdgeInsets.all(16.0),
          child: new Text(
            'OG',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13.0,
              fontWeight: FontWeight.w500,
            ),
          )
        ),
      ],
    ),
    new Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget> [
        new Container(
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            gradient: new LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              colors: <Color>[const Color(0xFF34CAD6), const Color(0xFF24AAB6)],
            ),
          ),
          margin: const EdgeInsets.only(left: 8.0),
          padding: const EdgeInsets.all(16.0),
          child: new Text(
            'DA',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13.0,
              fontWeight: FontWeight.w500,
            ),
          )
        ),
        new Container(
          decoration: const BoxDecoration(
            borderRadius: const BorderRadius.all(const Radius.circular(18.0)),
            color: const Color(0xFFE5E5EA),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
          child: const Text(
            '+cc laywercat@, hey Jeff, this is\nwhat I was talking about. Can\nyou clear all my appointments this\nafternoon? I want to hear from\nTim too before we bring everyone\nto Nevada',
            style: const TextStyle(
              color: Colors.black,
              letterSpacing: -0.4,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ],
    ),
    new Row(
      mainAxisAlignment: MainAxisAlignment.end,
      mainAxisSize: MainAxisSize.min,
      children: <Widget> [
        new Container(
          decoration: const BoxDecoration(
            borderRadius: const BorderRadius.all(const Radius.circular(18.0)),
            color: _blue,
          ),
          margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
          padding: const EdgeInsets.symmetric(horizontal: 14.0, vertical: 10.0),
          child: const Text(
            'Let me know if I should hold off for now',
            style: const TextStyle(
              color: Colors.white,
              letterSpacing: -0.4,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        new Container(
          decoration: new BoxDecoration(
            shape: BoxShape.circle,
            gradient: new LinearGradient(
              begin: FractionalOffset.topLeft,
              colors: <Color>[const Color(0xFFA4A9B8), const Color(0xFF858993)],
            ),
          ),
          margin: const EdgeInsets.only(right: 8.0),
          padding: const EdgeInsets.all(16.0),
          child: new Text(
            'OG',
            style: const TextStyle(
              color: Colors.white,
              fontSize: 13.0,
              fontWeight: FontWeight.w500,
            ),
          )
        ),
      ],
    ),
  ];
}

class IosAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return new ClipRect(
      // child: new BackdropFilter(
        // filter: new ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
        return new SizedBox(
          height: 45.0 + MediaQuery.of(context).padding.top,
          child: new DecoratedBox(
            decoration: new BoxDecoration(
              color: const Color(0xEEF8F8F8),
              border: const Border(
                bottom: const BorderSide(
                  width: 0.5,
                  style: BorderStyle.solid,
                  color: const Color(0xAABBBBBB),
                ),
              ),
            ),
            child: new Padding(
              padding: new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
              child: new Row(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding: const EdgeInsets.only(left: 2.0),
                    child: const Icon(Icons.arrow_back_ios, color: _blue, size: 27.0),
                  ),
                  const Center(child:
                    const Text(
                      'List',
                      style: const TextStyle(color: _blue, fontSize: 17.0),
                    )
                  ),
                  new Expanded(child: new Center(
                    child: new Row(
                      mainAxisSize: MainAxisSize.min,
                      children: const <Widget>[
                        const Image(
                          image: const AssetImage('assets/git.png'),
                          width: 24.0,
                          color: const Color(0xFF333333)
                        ),
                        const Padding(padding: const EdgeInsets.only(left: 6.0)),
                        const Text(
                          'Add Neural Re…',
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.8,
                          ),
                        ),
                      ],
                    ),
                  )),
                  const Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: const Image(
                      image: const AssetImage('assets/search.png'),
                      color: _blue,
                      width: 27.0,
                    ),
                  ),
                ],
              ),
            ),
      ),
    );
  }
}

class IosBottomBar extends StatefulWidget {
  @override
  _IosBottomBarState createState() => new _IosBottomBarState();
}

class _IosBottomBarState extends State<IosBottomBar> {
  int currentTab = 0;

  @override
  Widget build(BuildContext context) {
    // return new ClipRect(
      // child: new BackdropFilter(
        // filter: new ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
        return new DecoratedBox(
          decoration: const BoxDecoration(
            border: const Border(top: const BorderSide(
              color: const Color(0xAABBBBBB),
              width: 0.5,
              style: BorderStyle.solid,
            )),
            color: const Color(0xEEF8F8F8),
          ),
          child: new IconTheme(
            data: const IconThemeData(
              color: _gray,
              size: 28.0,
            ),
            child: new DefaultTextStyle(
              style: const TextStyle(
                fontSize: 10.0,
                letterSpacing: 0.12,
                color: _gray,
              ),
              child: new SizedBox(
                height: 50.0,
                child: new Padding(
                  padding: const EdgeInsets.only(bottom: 4.0),
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      new Expanded(
                        child: new Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            new Image(
                              image: const AssetImage('assets/file.png'),
                              color: _gray,
                              width: 25.0,
                            ),
                            const Padding(padding: const EdgeInsets.only(top: 4.0)),
                            new Text('Repository'),
                          ],
                        ),
                      ),
                      new Expanded(
                        child: IconTheme.merge(
                          data: const IconThemeData(
                            color: _blue,
                          ),
                          child: DefaultTextStyle.merge(
                            style: const TextStyle(color: _blue),
                            child: new Column(
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                new Icon(Icons.call_merge, size: 30.0),
                                const Padding(padding: const EdgeInsets.only(top: 2.0)),
                                new Text('Pull Requests'),
                              ],
                            ),
                          ),
                        ),
                      ),
                      new Expanded(
                        child: new Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            new Image(
                              image: const AssetImage('assets/bug.png'),
                              color: _gray,
                              width: 25.0,
                            ),
                            const Padding(padding: const EdgeInsets.only(top: 4.0)),
                            new Text('Issues'),
                          ],
                        ),
                      ),
                      new Expanded(
                        child: new Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            new Image(
                              image: const AssetImage('assets/comments.png'),
                              color: _gray,
                              width: 25.0,
                            ),
                            const Padding(padding: const EdgeInsets.only(top: 4.0)),
                            new Text('Notifications'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
    );
  }
}
