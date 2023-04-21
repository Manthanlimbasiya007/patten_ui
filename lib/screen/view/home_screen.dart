import 'package:flutter/material.dart';

class homescreen extends StatefulWidget {
  const homescreen({Key? key}) : super(key: key);

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  double _sliderValue = 1;
  String _pattern = '1';

  void _generatePattern(double value) {
    String pattern = '';
    for (int i = 1; i <= 5; i++) {
      pattern += '${List.generate(i, (j) => j + 1).join()} \n';
    }
    setState(() {
      _pattern = pattern;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Pattern"),
          centerTitle: true,
          backgroundColor: Colors.black,
        ),
        body: Column(
          children: [
            const Text(
              'Slider pattern',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            Slider(
              activeColor: Colors.black,
              value: _sliderValue,
              min: 1,
              max: 5,
              label: _sliderValue.round().toString(),
              onChanged: (value) {
                setState(() {
                  _sliderValue = value;
                });
              },
              onChangeEnd: _generatePattern,
            ),
            const SizedBox(height: 25),
            Text(
              _pattern,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
