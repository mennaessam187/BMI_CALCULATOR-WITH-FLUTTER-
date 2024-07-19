import 'package:bmi_calculator1/screans/bmi_result.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import '../screans/bmi_result.dart';

//import 'package:flutter_xlider/flutter_xlider.dart';
double height = 135;
int Weight = 52;
bool select = false;
bool select2 = false;

class BMICalculator extends StatefulWidget {
  const BMICalculator({super.key});

  @override
  State<BMICalculator> createState() => _BMICalculatorState();
  StepState() {}
}

class _BMICalculatorState extends State<BMICalculator> {
  int age = 15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "BMI Calculator",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            children: [
              Text(
                "Gender",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          select = true;
                          select2 = false;
                        });
                      },
                      child: Container(
                        width: 180,
                        height: 180,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: select == false
                                ? Colors.grey
                                : Color.fromARGB(255, 4, 73, 129),
                            width: 2,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: select == false
                                  ? Colors.grey
                                  : Color.fromARGB(255, 33, 141, 230),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.check,
                                  color: select == false
                                      ? Colors.grey[300]
                                      : Color.fromARGB(255, 4, 73, 129),
                                  size: 30,
                                ),
                              ],
                            ),
                            Image.asset(
                              "images/man.png",
                              color: select == false
                                  ? Colors.grey[700]
                                  : Color.fromARGB(255, 4, 73, 129),
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Male",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          select2 = true;
                          select = false;
                        });
                      },
                      child: Container(
                        width: 180,
                        height: 180,
                        decoration: BoxDecoration(
                          color: Colors.grey[300],
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: select2 == false
                                ? Colors.grey
                                : Color.fromARGB(255, 4, 73, 129),
                            width: 2,
                          ),
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 5,
                              color: select2 == false
                                  ? Colors.grey
                                  : Color.fromARGB(255, 33, 141, 230),
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Icon(
                                  Icons.check,
                                  color: select2 == false
                                      ? Colors.grey[300]
                                      : Color.fromARGB(255, 4, 73, 129),
                                  size: 30,
                                ),
                              ],
                            ),
                            Image.asset(
                              "images/woman.png",
                              color: select2 == false
                                  ? Colors.grey[700]
                                  : Color.fromARGB(255, 4, 73, 129),
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Female",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 19,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                "Height(cm)",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                  width: 370,
                  height: 180,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 2,
                      ),
                    ],
                    color: Color.fromARGB(255, 255, 254, 254),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            " ${height.toStringAsFixed(2)}",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 15),
                            child: Text(
                              "cm",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Slider(
                        value: height,
                        min: 100,
                        max: 250,
                        activeColor: Color.fromARGB(255, 4, 73, 129),
                        label: height.round().toString(),
                        onChanged: (value) {
                          setState(() {
                            height = value;
                          });
                        },
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(
                        "Age",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Text(
                      "Weight(Kg)",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 160,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2,
                        ),
                      ],
                      color: Color.fromARGB(255, 255, 254, 254),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              setState(() {
                                age++;
                              });
                            },
                            icon: CircleAvatar(
                              child: Icon(
                                Icons.add,
                                color: Color.fromARGB(255, 4, 73, 129),
                              ),
                              backgroundColor: Colors.grey[400],
                            ),
                          ),
                          Text(
                            "${age}",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 25,
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              setState(() {
                                age--;
                              });
                            },
                            icon: CircleAvatar(
                              child: Icon(
                                Icons.remove,
                                color: Color.fromARGB(255, 4, 73, 129),
                              ),
                              backgroundColor: Colors.grey[400],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 155,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2,
                        ),
                      ],
                      color: Color.fromARGB(255, 255, 254, 254),
                    ),
                    child: CupertinoPicker(
                      itemExtent: 40,
                      onSelectedItemChanged: (index) {
                        Weight = index + 1;
                      },
                      children: List<Widget>.generate(250, (index) {
                        return Center(child: Text('${index + 1}'));
                      }),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                  color: Color.fromARGB(255, 4, 73, 129),
                  textColor: Colors.white,
                  minWidth: 300,
                  height: 70,
                  child: Text(
                    "CALCULATE BMI",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => bmiresult(
                                age: age,
                                height: height,
                                weight: Weight,
                                type: select,
                              )),
                    );
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
