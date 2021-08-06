import 'package:flutter/material.dart';

class MathCal extends StatefulWidget {
  const MathCal({Key? key}) : super(key: key);

  @override
  _MathCalState createState() => _MathCalState();
}

class _MathCalState extends State<MathCal> {
  var arr = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];
  var myTurn = "0";
  int oScore = 0;
  int xScore = 0;
  int filledboxed = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Player X:",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    Text(
                      xScore.toString(),
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.red),
                    ),
                    Text(
                      "Player 0:",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange),
                    ),
                    Text(
                      oScore.toString(),
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          color: Colors.deepOrange),
                    ),
                  ],
                ),
              ),
              Wrap(
                runSpacing: 1,
                spacing: 1,
                children: [
                  for (var i = 0; i < arr.length; i++)
                    Container(
                      width: (MediaQuery.of(context).size.width - 2) / 3,
                      height: 110,
                      child: ElevatedButton(
                        onPressed: arr[i] != ""
                            ? null
                            : () {
                                if (arr[i] != "") {
                                  return;
                                }
                                setState(
                                  () {
                                    arr[i] = myTurn;
                                    if (myTurn == "0") {
                                      myTurn = "X";
                                    } else {
                                      myTurn = "0";
                                    }
                                    _checkWinner();
                                  },
                                );
                              },
                        child: Text(
                          arr[i],
                          style: TextStyle(
                              fontSize: 80,
                              fontWeight: FontWeight.bold,
                              color: Colors.red),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _clear,
        child: Icon(Icons.refresh),
      ),
    );
  }

  void _clear() {
    for (var i = 0; i < arr.length; i++) {
      arr[i] = "";
    }
    setState(() {});
  }

  void _checkWinner() {
    // Checking rows
    if (arr[0] == arr[1] && arr[0] == arr[2] && arr[0] != '') {
      _showDialogbox(arr[0]);
    }
    if (arr[3] == arr[4] && arr[3] == arr[5] && arr[3] != '') {
      _showDialogbox(arr[3]);
    }
    if (arr[6] == arr[7] && arr[6] == arr[8] && arr[6] != '') {
      _showDialogbox(arr[6]);
    }
    if (arr[0] == arr[3] && arr[0] == arr[6] && arr[0] != '') {
      _showDialogbox(arr[0]);
    }
    if (arr[1] == arr[4] && arr[1] == arr[7] && arr[1] != '') {
      _showDialogbox(arr[1]);
    }
    if (arr[2] == arr[5] && arr[2] == arr[8] && arr[2] != '') {
      _showDialogbox(arr[2]);
    }
    if (arr[0] == arr[4] && arr[0] == arr[8] && arr[0] != '') {
      _showDialogbox(arr[0]);
    }
    if (arr[2] == arr[4] && arr[2] == arr[6] && arr[2] != '') {
      _showDialogbox(arr[2]);
    } else if (arr.length == "") {
      _showDrawDialog();
    }
  }

  void _showDialogbox(String winner) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("\"" + winner + "\"is winner!!!"),
            actions: [
              TextButton(
                onPressed: () {
                  _clear();
                  Navigator.of(context).pop();
                },
                child: Text("Play Again"),
              ),
            ],
          );
        });
    if (winner == "0") {
      oScore++;
    } else if (winner == "X") {
      xScore++;
    }
  }

  void _showDrawDialog() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Draw"),
            actions: [
              TextButton(
                onPressed: () {
                  _clear();
                  Navigator.of(context).pop();
                },
                child: Text("Play Again"),
              ),
            ],
          );
        });
  }
}
