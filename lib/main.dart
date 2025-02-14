import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Log in"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.symmetric(vertical: 100.0),
              child: const Text(
                "Login \n Form",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.yellow,
                  fontSize: 50.0,
                  fontWeight: FontWeight.w900,
                  fontFamily: "Poppins",
                ),
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 7.0, horizontal: 5.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Username",
                  labelStyle: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 7.0, horizontal: 5.0),
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: "Password",
                  labelStyle: TextStyle(
                    fontSize: 20.0,
                  ),
                ),
                obscureText: true,
              ),
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 7.0, horizontal: 5.0),
              child: SizedBox(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.red), 
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            vertical: 13.0, horizontal: 20.0)),
                    textStyle: MaterialStateProperty.all(const TextStyle(
                      fontSize: 23.0,
                    )),
                  ),
                  child: const Text("Login"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
