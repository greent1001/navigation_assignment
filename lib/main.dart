import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("First Page"),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.push (
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondPage(),
                  ),
                );
              },
              child: Text("Go To Next Page"),
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
    class SecondPage extends StatefulWidget {
      @override
      _SecondPageState createState() => _SecondPageState();
    }

    class _SecondPageState extends State<SecondPage> {
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Second Page"),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                        MaterialPageRoute(
                          builder: (context) => ThirdPage(),
                    ),
                   );
                  },
                  child: Text("Go To Next Page"),
                  style: ButtonStyle(
                    elevation: MaterialStateProperty.all(1),
                  ),
                )
              ],
         ),
      ),
    );
  }
}

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Third Page"),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Start Over"),
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(1),
              ),
            )
          ],
        ),
      ),
    );
  }
}



















