import 'package:flutter/material.dart';

class Calc extends StatefulWidget {
  @override
  _CalcState createState() => _CalcState();
}

class _CalcState extends State<Calc> {
  int number1, number2;
  String number, operator;
  var result = new StringBuffer();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Kalkulator'),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container (
              height: MediaQuery.of(context).size.height / 3,
              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  result.toString(),
                  style: TextStyle(
                    fontSize: 40.0,
                  ),
                ),
              )
            ),
           Container(
//             height: MediaQuery.of(context).size.height/2,
             child: Column(
               children: [
                 Container(
                   padding: EdgeInsets.fromLTRB(2, 0, 2, 0),
                   child:  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       RaisedButton(
                         padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                         color: Colors.orange,
                         textColor: Colors.white,
                         child: Text("C", style: TextStyle(fontSize: 18),),
                         onPressed: (){
                           setState(() {
                             clear();
                           });
                         },
                       ),
                       RaisedButton(
                         padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                         color: Colors.orange,
                         textColor: Colors.white,
                         child: Icon(Icons.backspace, size: 21.0,),
                         onPressed: (){
                           setState(() {
                             backspace();
                           });
                         },
                       ),
                       RaisedButton(
                         padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                         color: Colors.orange,
                         textColor: Colors.white,
                         child: Text("%", style: TextStyle(fontSize: 18),),
                         onPressed: (){
                           setState(() {
                             operator="persen";
                           });
                         },
                       ),
                       RaisedButton(
                         padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                         color: Colors.orange,
                         textColor: Colors.white,
                         child: Text("/", style: TextStyle(fontSize: 18),),
                         onPressed: (){
                           setState(() {
                             calculator("/");
                           });
                         },
                       ),
                     ],
                   ),
                 ),
                 Container(
                   padding: EdgeInsets.fromLTRB(2, 2, 2, 0),
                   child:  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       RaisedButton(
                         padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                         color: Colors.grey[400],
                         textColor: Colors.white,
                         child: Text("7", style: TextStyle(fontSize: 18),),
                         onPressed: (){
                           setState(() {
                             calculator("7");
                           });
                       },
                       ),
                       RaisedButton(
                         padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                         color: Colors.grey[400],
                         textColor: Colors.white,
                         child: Text("8", style: TextStyle(fontSize: 18),),
                         onPressed: (){
                           setState(() {
                             calculator("8");
                           });
                         },
                       ),
                       RaisedButton(
                         padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                         color: Colors.grey[400],
                         textColor: Colors.white,
                         child: Text("9", style: TextStyle(fontSize: 18),),
                         onPressed: (){
                           setState(() {
                             calculator("9");
                           });
                         },
                       ),
                       RaisedButton(
                         padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                         color: Colors.orange,
                         textColor: Colors.white,
                         child: Text("X", style: TextStyle(fontSize: 18),),
                         onPressed: (){
                           setState(() {
                             calculator("x");
                           });
                         },
                       ),
                     ],
                   ),
                 ),
                 Container(
                   padding: EdgeInsets.fromLTRB(2, 2, 2, 0),
                   child:  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       RaisedButton(
                         padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                         color: Colors.grey[400],
                         textColor: Colors.white,
                         child: Text("4", style: TextStyle(fontSize: 18),),
                         onPressed: (){
                           setState(() {
                             calculator("4");
                           });
                         },
                       ),
                       RaisedButton(
                         padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                         color: Colors.grey[400],
                         textColor: Colors.white,
                         child: Text("5", style: TextStyle(fontSize: 18),),
                         onPressed: (){
                           setState(() {
                             calculator("5");
                           });
                         },
                       ),
                       RaisedButton(
                         padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                         color: Colors.grey[400],
                         textColor: Colors.white,
                         child: Text("6", style: TextStyle(fontSize: 18),),
                         onPressed: (){
                           setState(() {
                             calculator("6");
                           });
                         },
                       ),
                       RaisedButton(
                         padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                         color: Colors.orange,
                         textColor: Colors.white,
                         child: Text("-", style: TextStyle(fontSize: 18),),
                         onPressed: (){
                           setState(() {
                             calculator("-");
                           });
                         },
                       ),
                     ],
                   ),
                 ),
                 Container(
                   padding: EdgeInsets.fromLTRB(2, 2, 2, 0),
                   child:  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       RaisedButton(
                         padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                         color: Colors.grey[400],
                         textColor: Colors.white,
                         child: Text("1", style: TextStyle(fontSize: 18),),
                         onPressed: (){
                           setState(() {
                             calculator("1");
                           });
                         },
                       ),
                       RaisedButton(
                         padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                         color: Colors.grey[400],
                         textColor: Colors.white,
                         child: Text("2", style: TextStyle(fontSize: 18),),
                         onPressed: (){
                           setState(() {
                             calculator("2");
                           });
                         },
                       ),
                       RaisedButton(
                         padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                         color: Colors.grey[400],
                         textColor: Colors.white,
                         child: Text("3", style: TextStyle(fontSize: 18),),
                         onPressed: (){
                           setState(() {
                             calculator("3");
                           });
                         },
                       ),
                       RaisedButton(
                         padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                         color: Colors.orange,
                         textColor: Colors.white,
                         child: Text("+", style: TextStyle(fontSize: 18),),
                         onPressed: (){
                           setState(() {
                             calculator("+");
                           });
                         },
                       ),
                     ],
                   ),
                 ),
                 Container(
                   padding: EdgeInsets.fromLTRB(2, 2, 2, 0),
                   child:  Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Container(
                         width: MediaQuery.of(context).size.width / 4.1,
                         child: RaisedButton(
                           padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                           color: Colors.grey[400],
                           textColor: Colors.white,
                           child: Text("0", style: TextStyle(fontSize: 18),),
                           onPressed: (){
                             setState(() {
                               calculator("0");
                             });
                           },
                         ),
                       ),
                       Container(
                         width: MediaQuery.of(context).size.width / 1.35,
                         child: RaisedButton(
                           padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                           color: Colors.orange,
                           textColor: Colors.white,
                           child: Text("=", style: TextStyle(fontSize: 18),),
                           onPressed: (){
                             setState(() {
                               calculator("=");
                             });
                           },
                         ),
                       ),
                 ],
               ),)
              ],
            ),
          ),
        ],
      )
  );
  }

//  function
  @override
  void initState() {
    super.initState();
    result.write("0");
    operator = "";
  }

  void clear() => setState(() {
    operator = "";
    result.clear();
    result.write("0");
  });

  void backspace() => setState(() {
    String value = result.toString();
    if (value.length > 0) {
      String lastValue = value.substring(value.length - 1);
      if (lastValue == "/" ||
          lastValue == "x" ||
          lastValue == "-" ||
          lastValue == "+") {
        operator = "";
      }
      value = value.substring(0, value.length - 1);
      result.clear();
      result.write(value.length == 0 ? "0" : value);
    }
  });

  void calculator(String str) => setState(() {
    bool isDoCalculate = false;
    String strValue = result.toString();
    String lastValue = strValue.substring(strValue.length - 1);
    if (str == "0" &&
        (lastValue == "/" ||
            lastValue == "x" ||
            lastValue == "-" ||
            lastValue == "+")) {
      return;
    } else if (str == "0" && result.toString() == "0") {
      return;
    } else if (str == "=") {
      isDoCalculate = true;
    } else if (str == "/" || str == "x" || str == "-" || str == "+") {
      if (operator.isEmpty) {
        operator = str;
      } else {
        isDoCalculate = true;
      }
    }

    if (!isDoCalculate) {
      if (result.toString() == "0" && str != "0") {
        result.clear();
      }
      result.write(str);
    } else {
      List<String> values = result.toString().split(operator);
      if (values[0].isNotEmpty &&
          values[1].isNotEmpty) {
        String hasil1 = values[0];
        String hasil2 = values[1];
        double hasil = int.parse(hasil1).toDouble() / int.parse(hasil2).toDouble() + int.parse(hasil2).toDouble();
        print(hasil.toStringAsFixed(2));
        number1 = int.parse(values[0]);
        number2 = int.parse(values[1]);
        result.clear();
        int total = 0;
        switch (operator) {
          case "/":
            total = number1 ~/ number2;
            break;
          case "x":
            total = number1 * number2;
            break;
          case "-":
            total = number1 - number2;
            break;
          case "+":
            total = number1 + number2;
        }
        result.write(total);
        if (str == "/" || str == "x" || str == "-" || str == "+") {
          operator = str;
          result.write(str);
        } else {
          operator = "";
        }
      } else {
        String strValue = result.toString();
        String lastValue = strValue.substring(strValue.length - 1);
        if (str == "/" || str == "x" || str == "-" || str == "+") {
          operator = "";
          result.clear();
          result
              .write(strValue.substring(0, strValue.length - 1) + "" + str);
          operator = str;
        } else if (str == "=" &&
            (lastValue == "/" ||
                lastValue == "x" ||
                lastValue == "-" ||
                lastValue == "+")) {
          operator = "";
          result.clear();
          result.write(strValue.substring(0, strValue.length - 1));
        }
      }
    }
  });
}


