import 'package:flutter/material.dart';
import "dart:math";

void main() {
  runApp(const FApp());
}

class FApp extends StatelessWidget {
  const FApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FApp",
      theme: ThemeData(
        primaryColor: Colors.purple,
        colorScheme: ColorScheme.fromSeed(
            seedColor: Colors.deepPurple,
            secondary: const Color.fromARGB(255, 143, 92, 233)),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

List<String> S = [
  "Don't",
  "You Might Die",
  "You won't forgive yourself",
  "Opps please don't",
  "Don't Fap",
  "You will die",
  "It's not good for your health",
  "You'll run mad",
];

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _ScreenState();
}

class _ScreenState extends State<HomeScreen> {
  String _s = "";
  getRandom() {
    setState(() {
      _s = S[Random().nextInt(S.length)];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "FApp",
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              "Welcome To FApp, Please Don't Fap",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.secondary,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 20),
            Text(
              _s,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 20,
                background: Paint()..color = Colors.redAccent,
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                // ElevatedButton.icon(
                //   onPressed: () {},
                //   icon: const Icon(Icons.add),
                //   label: const Text("Add"),
                // ),
                const SizedBox(width: 20),
                ElevatedButton(
                  onPressed: getRandom,
                  child: const Text("Start!"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
