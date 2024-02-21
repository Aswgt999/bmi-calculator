import 'package:flutter/material.dart';

class BmiCalc extends StatefulWidget {
  const BmiCalc({super.key});

  @override
  State<BmiCalc> createState() => _BmiCalcState();
}

class _BmiCalcState extends State<BmiCalc> {
  TextEditingController height = TextEditingController();
  TextEditingController weight = TextEditingController();
  double result = 0;
  double h_value = 0;
  double w_value = 0;
  void calculate() {
    h_value = double.parse(height.text);
    w_value = double.parse(weight.text);
    result = w_value/(h_value*h_value);
    print(result);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      appBar: AppBar(
        backgroundColor: Colors.tealAccent,
        centerTitle: true,
        title: Text(
          'BMI Calculator',
          style: TextStyle(color: Colors.green),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: TextField(
                controller: weight,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'weight',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              child: TextField(
                controller:height,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  labelText: 'height',
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                                  calculate();
                                });              
              },
              style: TextButton.styleFrom(backgroundColor: Colors.white),
              child: Text('calculate'),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(color: Colors.yellow),
              child: Text(
                result == 'result' ?"Enter Value" : "${result.toString()}"
              ),
            ),
          ],
        ),
      ),
    );
  }
}