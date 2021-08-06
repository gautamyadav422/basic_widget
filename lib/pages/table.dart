import 'package:flutter/material.dart';

class MathTable extends StatefulWidget {
  const MathTable({Key? key}) : super(key: key);

  @override
  _MathTableState createState() => _MathTableState();
}

class _MathTableState extends State<MathTable> {
  var num = 1;
  var result = "";

  _calTable() {
    result = "";
    for (var i = 1; i <= 10; i++) {
      result += "$num * $i = ${num * i}\n";
    }
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _calTable();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Row(
              children: [
                IconButton(
                  onPressed: () {
                    _calTable();
                    num = num - 1;
                    setState(() {});
                  },
                  icon: Icon(
                    Icons.arrow_left,
                    size: 55,
                    color: Colors.deepOrange,
                  ),
                ),
                Text("Previous"),
                SizedBox(
                  width: 150,
                ),
                Text("Next"),
                IconButton(
                  onPressed: () {
                    _calTable();
                    num = num + 1;
                    setState(() {});
                  },
                  icon: Icon(
                    Icons.arrow_right,
                    size: 55,
                    color: Colors.deepOrange,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Check Here All Table",
              style: TextStyle(
                  color: Colors.teal,
                  fontSize: 30,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              result,
              style: TextStyle(fontSize: 32),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            result = "";
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}
