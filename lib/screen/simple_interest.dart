import 'package:flutter/material.dart';

class SimpleInterestScreen extends StatefulWidget {
  const SimpleInterestScreen({super.key});

  @override
  State<SimpleInterestScreen> createState() => _SimpleInterestScreenState();
}

class _SimpleInterestScreenState extends State<SimpleInterestScreen> {
  int? principle;
  int? rate;
  int? time;
  int? result = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Simple Interest Calculator',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        elevation: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Principle',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            onChanged: (value) {
              setState(() {
                principle = int.parse(value);
              });
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter your principle',
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Rate',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            onChanged: (value) {
              setState(() {
                rate = int.parse(value);
              });
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter your rate',
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          const Text(
            'Time',
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            onChanged: (value) {
              setState(() {
                time = int.parse(value);
              });
            },
            decoration: const InputDecoration(
                border: OutlineInputBorder(), hintText: 'Enter your time'),
          ),
          const SizedBox(
            height: 30,
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  if (principle != null && rate != null && time != null) {
                    result = (principle! * rate! * time! ~/ 100);
                  }
                });
              },
              child: const Text('Calculate'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: Text(
              'Your Simple Interest is $result',
              style: const TextStyle(
                fontSize: 25,
              ),
            ),
          )
        ],
      ),
    );
  }
}
