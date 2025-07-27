import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              spacing: 20,
              children: [
                Text(
                  'BMI Calculator',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Column(children: [Icon(Icons.male_sharp)]),
                      height: 200,
                      width: 200,
                      color: Colors.green,
                    ),

                    Container(width: 200, height: 200, color: Colors.green),
                  ],
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  color: Colors.green,
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          'This is a container with a long text that should wrap properly.',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.green,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'This is a container with a long text that should wrap properly.',
                              textAlign: TextAlign.center,
                            ),
                          ],
                        ),
                      ),

                      Container(height: 200, width: 200, color: Colors.green),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
