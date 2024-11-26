import 'package:flutter/material.dart';

class SimpleInterestView extends StatefulWidget {
  const SimpleInterestView({super.key});

  @override
  State<SimpleInterestView> createState() => _SiViewState();
}

class _SiViewState extends State<SimpleInterestView> {
  double principal = 0;
  double time = 0;
  double rate = 0;
  double si = 0;
  double total = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Simple Interest'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [
            TextField(
              onChanged: (value) {
                principal = double.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter principal',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              onChanged: (value) {
                time = double.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter time',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              onChanged: (value) {
                rate = double.parse(value);
              },
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Enter rate',
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Text('Simple Interest : $si',
                style: const TextStyle(
                  fontSize: 20,
                )),
            const SizedBox(
              height: 8,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    total = (principal * time * rate);
                    si = total / 100;
                  });
                },
                child: const Text('Calculate'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
