import 'package:basic_widget/pages/cal.dart';
import 'package:basic_widget/pages/table.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text("HomePage"),
          centerTitle: true,
          bottom: TabBar(
            tabs: [
              Tab(
                text: "Tic Toe",
              ),
              Tab(
                text: "Table",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            MathCal(),
            MathTable(),
          ],
        ),
      ),
    );
  }
}
