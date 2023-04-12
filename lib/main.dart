import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Remote Car",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CarRemoteApp(),
    );
  }
}

class CarRemoteApp extends StatefulWidget {
  const CarRemoteApp({super.key});

  @override
  State<CarRemoteApp> createState() => _CarRemoteAppState();
}

class _CarRemoteAppState extends State<CarRemoteApp> {
  String str = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Car Remote App"),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 10),
            Container(
                height: 200,
                width: 350,
                color: Colors.grey,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 100,
                        child: ElevatedButton(
                          onPressed: () {
                            onPressed("Forward");
                          },
                          child: const Text("Forward"),
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                              width: 100,
                              child: ElevatedButton(
                                onPressed: () {
                                  onPressed("Left");
                                },
                                child: const Text("Left"),
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              child: ElevatedButton(
                                onPressed: () {
                                  onPressed("Stop");
                                },
                                child: const Text("Stop"),
                              ),
                            ),
                            SizedBox(
                              width: 100,
                              child: ElevatedButton(
                                onPressed: () {
                                  onPressed("Right");
                                },
                                child: const Text("Right"),
                              ),
                            )
                          ]),
                      SizedBox(
                        width: 100,
                        child: ElevatedButton(
                          onPressed: () {
                            onPressed("Reverse");
                          },
                          child: const Text("Reverse"),
                        ),
                      ),
                      Text(
                        str,
                      )
                    ]))
          ],
        ),
      ),
    );
  }

  void onPressed(String s) {
    str = s;
    setState(() {});
  }
}
