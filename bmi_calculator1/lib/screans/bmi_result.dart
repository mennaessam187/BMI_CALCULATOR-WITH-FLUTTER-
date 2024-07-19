import 'dart:math';
import 'package:bmi_calculator1/screans/firstScrean.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import './firstScrean.dart';

String emoj1 = "\u{1F631}";
String emoj2 = "\u{1F4AA}";
String emoj3 = "\u{1F629}";
String emoj4 = "\u{1F974}";

class bmiresult extends StatelessWidget {
  final int age;
  final double height;
  final int weight;
  final bool type;

  bmiresult({
    required this.age,
    required this.height,
    required this.weight,
    required this.type,
  });

  double calcBMI(double height, int weight) {
    double result = weight / pow(height / 100, 2);
    return result;
  }

  String state3() {
    if (calcBMI(height, weight) <= 18.5)
      return "Under Weight";
    else if (calcBMI(height, weight) > 18.5 &&
        (calcBMI(height, weight)) <= 25.0)
      return "Normal Weight";
    else if (calcBMI(height, weight) > 25 && (calcBMI(height, weight)) < 30)
      return "Over Weight";
    else
      return "Obese";
  }

  String state4() {
    if (state3() == "Under Weight") {
      return "Focus on consuming nutrient-dense foods, increasing healthy calorie intake, and engaging in strength training exercises to gain weight healthily.";
    } else if (state3() == "Normal Weight") {
      return "Maintain a balanced diet, regular exercise, and a healthy lifestyle to keep your weight stable and support overall well-being.";
    } else if (state3() == "Over Weight") {
      return "Adopt a balanced diet with controlled portions, increase physical activity, and seek guidance from a healthcare professional to manage weight effectively.";
    } else
      return "Focus on a healthy, calorie-controlled diet, increase regular physical activity, and consult with a healthcare professional for personalized weight management and support.";
  }

  String state5() {
    if (state3() == "Under Weight") {
      return emoj4;
    } else if (state3() == "Normal Weight") {
      return emoj2;
    } else if (state3() == "Over Weight") {
      return emoj3;
    } else
      return emoj1;
  }

  Widget state(bool type) {
    if (type == true) {
      return Image.asset(
        "images/man.png",
        width: 40,
        height: 40,
      );
    } else
      return Image.asset(
        "images/woman.png",
        width: 40,
        height: 40,
      );
  }

  String selectGender(bool type) {
    if (type == true) {
      return "Male";
    } else
      return "Female";
  }

  @override
  Widget build(BuildContext context) {
    double bmi = calcBMI(height, weight);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Back",
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Result",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            Center(
              child: Column(
                children: [
                  Text(
                    "Your BMI is",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    width: 120,
                    height: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color.fromARGB(255, 4, 73, 129),
                    ),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "${bmi.toStringAsFixed(2)}",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "Kg/m2",
                            style: TextStyle(
                              fontSize: 20,
                              color: Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    "(${state3()})",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 370,
                    height: 100,
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
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            state(type),
                            Text(
                              "${height.toStringAsFixed(2)}",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              "$age",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                            Text(
                              "$weight",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 20),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                selectGender(type),
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                "Height",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                "Age",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                "Weight",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Container(
                    width: 370,
                    height: 260,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 2,
                        ),
                      ],
                      color: Color.fromARGB(255, 255, 254, 254),
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Text(
                            state5(),
                            style: TextStyle(
                              fontSize: 50,
                            ),
                          ),
                          Text(
                            state4(),
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                "By:Menna Essam",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Color.fromARGB(255, 4, 73, 129),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                      color: Color.fromARGB(255, 4, 73, 129),
                      textColor: Colors.white,
                      height: 70,
                      minWidth: 100,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "TRY AGAIN",
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Icon(Icons.refresh),
                          ],
                        ),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (contex) => BMICalculator()),
                        );
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
