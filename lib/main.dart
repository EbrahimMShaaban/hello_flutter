import 'package:flutter/material.dart';
import 'package:hello_flutter/stf_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyHomePage obj = MyHomePage();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      // home: MyHomePage(title: 'Flutter Demo Home Page'),
      initialRoute: MyHomePage.routeName,
      routes: {
        MyHomePage.routeName:(context)=> MyHomePage(),
        STFScreen.routeName:(_)=> STFScreen(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  static const String routeName = '/home';
  //MyHomePage({Key key, this.title}) : super(key: key);

  //final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.of(context).pushNamed(STFScreen.routeName);
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
