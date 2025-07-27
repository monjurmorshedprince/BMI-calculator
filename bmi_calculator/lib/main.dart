import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double height = 10.0;
  double weight = 10;
  double age = 10;

  calbraink() {
    // Logic to calculate BMI
    double bmi = weight / ((height / 100) * (height / 100));
    return bmi;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(8.0),
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
                    gender_container(title: 'Male'),
                    gender_container(title: 'Female'),
                  ],
                ),
                Container(
                  height: 100,
                  width: double.infinity,
                  color: const Color.fromARGB(255, 37, 29, 29),
                  child: Center(
                    child: Column(
                      children: [
                        Text('Height', textAlign: TextAlign.center),

                        Slider(
                          thumbColor: Colors.amberAccent,
                          activeColor: Colors.amber,
                          value: height,
                          max: 100,
                          divisions: 20,
                          label: height.round().toString(),
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Column(
                        spacing: 18,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Weight', style: TextStyle(fontSize: 30)),
                          Text('$weight', style: TextStyle(fontSize: 30)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                child: Icon(Icons.add),
                                onPressed: () => setState(() {
                                  weight++;
                                  // Logic to decrease weight
                                }),
                              ),
                              ElevatedButton(
                                child: Icon(Icons.remove),
                                onPressed: () => setState(() {
                                  weight--;
                                  // Logic to decrease weight
                                }),
                              ),
                            ],
                          ),
                        ],
                      ),
                      height: 200,
                      width: 200,
                      color: const Color.fromARGB(255, 37, 29, 29),
                    ),

                    Container(
                      child: Column(
                        spacing: 18,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Age', style: TextStyle(fontSize: 30)),
                          Text('$age', style: TextStyle(fontSize: 30)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                child: Icon(Icons.add),
                                onPressed: () => setState(() {
                                  age++;
                                  // Logic to decrease weight
                                }),
                              ),
                              ElevatedButton(
                                child: Icon(Icons.remove),
                                onPressed: () => setState(() {
                                  age--;
                                  // Logic to decrease weight
                                }),
                              ),
                            ],
                          ),
                        ],
                      ),
                      height: 200,
                      width: 200,
                      color: const Color.fromARGB(255, 37, 29, 29),
                    ),
                  ],
                ),
                Text(
                  'Your BMI is ${calbraink().toStringAsFixed(2)}',
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class gender_container extends StatelessWidget {
  gender_container({super.key, required this.title});

  String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        spacing: 18,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.male_sharp, size: 100),
          Text(title, style: TextStyle(fontSize: 30)),
        ],
      ),
      height: 200,
      width: 200,
      color: const Color.fromARGB(255, 37, 29, 29),
    );
  }
}
