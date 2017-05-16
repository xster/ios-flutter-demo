import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new IosDemoApp());
}

const TextStyle _kIosBottomTabFont = const TextStyle(fontSize: 11.0, letterSpacing: 0.12);

class IosDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
        primaryColor: const Color(0xFF007AFF),
        accentColor: const Color(0xFF929292),
      ),
      title: 'iOS Demo',
      home: new Scaffold(
        appBar: new IosAppBar(),
        body: new ListView(
          children: <Widget> [
            new Row(children: <Widget>[
              new Icon(Icons.atm),
              new Expanded(child: new Text('Guy')),
            ]),
            new Padding(padding: new EdgeInsets.all(80.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new CupertinoButton(
                  child: new Text('Button'),
                  color: const Color(0xFF007AFF),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
        bottomNavigationBar: new IosBottomBar(),
      ),
    );
  }
}

class IosAppBar extends PreferredSize {
  @override
  Size get preferredSize => const Size.fromHeight(50.0);

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: new EdgeInsets.only(top: MediaQuery.of(context).padding.top),
      child: new DecoratedBox(
        decoration: new BoxDecoration(
          border: const Border(
            bottom: const BorderSide(
              width: 1.0,
              style: BorderStyle.solid,
              color: const Color(0xFFDDDDDD)
            ),
          ),
        ),
        child: new Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Center(child: new Text('Chat')),
          ],
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
    return new BottomNavigationBar(
      currentIndex: currentTab,
      items: <BottomNavigationBarItem>[
        new BottomNavigationBarItem(
          icon: const Icon(Icons.favorite),
          title: new Text('Repositories', style: _kIosBottomTabFont),
        ),
        new BottomNavigationBarItem(
          icon: const Icon(Icons.call_merge),
          title: new Text('Pull Requests', style: _kIosBottomTabFont),
        ),
        new BottomNavigationBarItem(
          icon: const Icon(Icons.bug_report),
          title: new Text('Issues', style: _kIosBottomTabFont),
        ),
      ],
      onTap: (int newTab) {
        setState(() => currentTab = newTab);
      },
    );
  }
}
