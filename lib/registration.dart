import 'package:flutter/material.dart';

class Registration extends StatefulWidget {
  const Registration({Key? key}) : super(key: key);

  @override
  _RegistrationState createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  Widget textfiledall({
    required String hintText,
    required String labelText,
    required Color colorshint,
    required Color colorslabel,
    bool isSecure = false,
  }) {
    return TextField(
      obscureText: isSecure,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: hintText,
        hintStyle: TextStyle(color: colorshint),
        labelText: labelText,
        labelStyle: TextStyle(color: colorslabel),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Registraion Page"),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
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
                      "Welcome to Registration Page",
                      style: TextStyle(
                          color: Colors.indigoAccent,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    textfiledall(
                      hintText: "Enter your email",
                      labelText: "Email ID",
                      colorshint: Colors.grey,
                      colorslabel: Colors.indigoAccent,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    textfiledall(
                        hintText: "Enter your password",
                        labelText: "Password",
                        colorshint: Colors.grey,
                        colorslabel: Colors.indigoAccent,
                        isSecure: true),
                    SizedBox(
                      height: 10,
                    ),
                    textfiledall(
                        hintText: "Enter your Confirm Password",
                        labelText: "Confirm Password",
                        colorshint: Colors.grey,
                        colorslabel: Colors.indigoAccent,
                        isSecure: true),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text("Register"),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("If you have account"),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.pushNamed(context, '/login');
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
      ),
    );
  }
}
