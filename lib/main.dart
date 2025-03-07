import 'package:flutter/material.dart';
import './pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Log in",
        style:TextStyle(color: Colors.white),),
        backgroundColor: const Color.fromARGB(0, 226, 222, 222),
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
                  color: Colors.white,
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
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const HomePage()),
                    );
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color.fromARGB(255, 230, 212, 54)), 
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            vertical: 13.0, horizontal: 20.0)),
                    textStyle: MaterialStateProperty.all(const TextStyle(
                      fontSize: 23.0,color: Colors.white,
                    )),
                  ),
                  child: const Text("Go to Home page"),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}