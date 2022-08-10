import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  final scrollController = ScrollController();

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      print('Fede --> ${scrollController.offset}');
      /*if (scrollController.offset >=
              scrollController.position.maxScrollExtent &&
          !scrollController.position.outOfRange) {
        print("reached the bottom");
      } else if (scrollController.offset <=
              scrollController.position.minScrollExtent &&
          !scrollController.position.outOfRange) {
        print("reached the top");
      } else {
        print('No seeeee');
      }*/
    });
  }

  void dispose() {
    //scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista'),
      ),
      body: ListView.separated(
          controller: scrollController,
          itemBuilder: (BuildContext context, int index) {
            return buildBody(index);
          },
          separatorBuilder: (BuildContext context, int index) =>
              SizedBox(height: 8),
          itemCount: 35),
    );
  }

  Widget buildBody(int index) {
    return Column(
      children: [
        Text('Item nro $index',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Text('Detalle del item nro ---> $index')
      ],
    );
  }
}
