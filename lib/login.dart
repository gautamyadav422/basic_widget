import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isCheck = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Image.asset(
                    'images/211.png',
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Welcome to Login Page",
                    style: TextStyle(
                        color: Colors.indigoAccent,
                        fontSize: 21,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Email ID",
                      hintStyle: TextStyle(color: Colors.grey),
                      labelText: "Email",
                      labelStyle: TextStyle(color: Colors.indigoAccent),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Password",
                      hintStyle: TextStyle(color: Colors.grey),
                      labelText: "Password",
                      labelStyle: TextStyle(color: Colors.indigoAccent),
                    ),
                  ),
                  Row(
                    children: [
                      Checkbox(
                          value: isCheck,
                          onChanged: (val) {
                            setState(() {
                              isCheck = val!;
                            });
                          }),
                      Text("Save credentials"),
                      SizedBox(
                        width: 20,
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "forgot password",
                          style: TextStyle(color: Colors.redAccent),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/homePage');
                    },
                    child: Text("Login"),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("If you don't have account"),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/register');
                        },
                        child: Text(
                          "Click HERE",
                          style: TextStyle(color: Colors.indigoAccent),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
