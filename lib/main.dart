import 'package:flutter/material.dart';
import 'package:to_do_app_python_backend/UI/intray_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      home: SafeArea(
        child: DefaultTabController(
          length: 4,
          child: Scaffold(
            body: Stack(children: <Widget>[
              TabBarView(children: [
                IntrayPage(),
                Container(
                  color: Colors.orange,
                ),
                Container(
                  color: Colors.lightGreen,
                ),
                Container(
                  color: Colors.redAccent,
                )
              ]),
              Container(
                height: 100,
                decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    )),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 40),
                      child: const Text(
                        'Intray',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 36,
                            fontFamily: 'Avenir'),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 80,
                width: 80,
                margin: EdgeInsets.only(
                    top: 60,
                    left: MediaQuery.of(context).size.width * 0.5 - 40),
                child: FloatingActionButton(
                  backgroundColor: Colors.red,
                  onPressed: () {},
                  child: const Icon(
                    Icons.add_rounded,
                    size: 60,
                    color: Colors.white,
                  ),
                ),
              )
            ]),
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: const TabBar(
                tabs: [
                  Tab(
                    icon: Icon(Icons.home_rounded),
                  ),
                  Tab(
                    icon: Icon(Icons.rss_feed_rounded),
                  ),
                  Tab(
                    icon: Icon(Icons.perm_identity_rounded),
                  ),
                  Tab(
                    icon: Icon(
                      Icons.settings_rounded,
                    ),
                  ),
                ],
                labelColor: Colors.white,
                unselectedLabelColor: Colors.red,
                indicatorSize: TabBarIndicatorSize.label,
                indicatorPadding: EdgeInsets.all(2),
                indicatorColor: Colors.red,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
