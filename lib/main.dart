import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const MyHomePage(title: '< Settings'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Row(children: [
          TextButton(
            child: Text(widget.title,
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 20,
                )),
            onPressed: () => Navigator.of(context),
          ),
          const Text(
            '          Safari',
            style: TextStyle(
              color: Colors.black,
            ),
          )
        ]),
        centerTitle: true,
        backgroundColor: Colors.grey[50],
        elevation: 0,
      ),
      body: Column(
        children: [
          Divider(
            height: 1.0,
            color: Colors.grey[800],
            thickness: 0.05,
          ),
          const SizedBox(height: 30),
          Row(
            children: const [
              SizedBox(width: 40),
              Text(
                'PRIVACY & SECURITY',
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Center(
              child: Container(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
            margin: const EdgeInsets.only(top: 10),
            width: 350,
            height: 340,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            // Center is a layout widget. It takes a single child and positions it
            // in the middle of the parent.
            child: Column(
              children: <Widget>[
                const SizedBox(height: 5),
                Row(
                  children: [
                    const Text(
                      'Prevent Cross-Site Tracking',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(width: 15),
                    CupertinoSwitch(
                      value: isOn,
                      onChanged: (bool? value) {
                        if (value != null) {
                          setState(() {
                            isOn = value;
                          });
                        }
                      },
                      activeColor: Colors.green,
                    ),
                  ],
                ),
                Divider(
                  height: 20.0,
                  color: Colors.grey[400],
                  thickness: 1,
                ),
                Row(
                  children: const [
                    Text(
                      'Hide IP Address',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(width: 70),
                    Text(
                      'From Trackers >',
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 20.0,
                  color: Colors.grey[400],
                  thickness: 1,
                ),
                Row(
                  children: [
                    const Text(
                      'Block All Cookies',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(width: 110),
                    CupertinoSwitch(
                      value: isOn,
                      onChanged: (bool? value) {
                        if (value != null) {
                          setState(() {
                            isOn = value;
                          });
                        }
                      },
                      activeColor: Colors.green,
                    ),
                  ],
                ),
                Divider(
                  height: 20.0,
                  color: Colors.grey[400],
                  thickness: 1,
                ),
                Row(
                  children: [
                    const Text(
                      'Fraudulent Website Warning',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(width: 15),
                    CupertinoSwitch(
                      value: isOn,
                      onChanged: (bool? value) {
                        if (value != null) {
                          setState(() {
                            isOn = value;
                          });
                        }
                      },
                      activeColor: Colors.green,
                    ),
                  ],
                ),
                Divider(
                  height: 20.0,
                  color: Colors.grey[400],
                  thickness: 1,
                ),
                Row(
                  children: [
                    const Text(
                      'Privacy Preserving Ad\nMeasurement',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(width: 70),
                    CupertinoSwitch(
                      value: isOn,
                      onChanged: (bool? value) {
                        if (value != null) {
                          setState(() {
                            isOn = value;
                          });
                        }
                      },
                      activeColor: Colors.green,
                    ),
                  ],
                ),
                Divider(
                  height: 20.0,
                  color: Colors.grey[400],
                  thickness: 1,
                ),
                Row(
                  children: [
                    const Text(
                      'Check for Apple Pay',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                    const SizedBox(width: 85),
                    CupertinoSwitch(
                      value: isOn,
                      onChanged: (bool? value) {
                        if (value != null) {
                          setState(() {
                            isOn = value;
                          });
                        }
                      },
                      activeColor: Colors.green,
                    ),
                  ],
                ),
              ],
            ),
          )),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            child: const Text(
                'Allow websites to check if Apple Pay is enabled and if\nyou have an Apple Card account.',
                style: TextStyle(
                  color: Colors.black38,
                  fontSize: 14,
                )),
          ),
          Row(
            children: [
              TextButton(
                child: const Text('      About Safari & Privacy...',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 14,
                    )),
                onPressed: () => Navigator.of(context),
              ),
            ],
          ),
          Container(
              width: 350,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              child: Row(
                children: [
                  TextButton(
                    child: const Text('Clear History and Website Data',
                        style: TextStyle(
                          color: Colors.blue,
                          fontSize: 20,
                        )),
                    onPressed: () => Navigator.of(context),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
