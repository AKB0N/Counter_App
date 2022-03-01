import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({Key? key}) : super(key: key);

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int counter = 0;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          'Counter',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      counter--;
                    });
                  },
                  child: const Text(
                    '-',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  '$counter',
                  style: const TextStyle(
                      fontSize: 60,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30)),
                child: TextButton(
                  onPressed: () {
                    setState(() {
                      counter++;
                    });
                  },
                  child: const Text(
                    '+',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 60,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        child: const Icon(
          Icons.restart_alt,
          color: Colors.black,
          size: 40,
        ),
        onPressed: () {
          setState(() {});
          counter = 0;
        },
      ),
    );
  }
}
