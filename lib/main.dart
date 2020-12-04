import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CalculatorState();
  }
}

class _CalculatorState extends State<MyApp> {
  var num1=0.0 , num2=0.0  ;
  var res =0.0;
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(backgroundColor: Colors.black,
          title: Text(" Calculator For DCS ",
            style: TextStyle(fontFamily: 'Texturina',
              color: Colors.deepOrange,
          ),
          ),
          centerTitle: true,
          ),
        body: Container(margin: EdgeInsets.only(left: 20,right: 20),
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Wrap(children: [
         TextField( keyboardType: TextInputType.number,
          decoration: InputDecoration(
            hintText: " The first number",
          ),
           onChanged: (value){
            num1=double.parse(value);
               }
          ),

             TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration (
                hintText: "The second number",
          ),
          onChanged: (value) {
            num2 = double.parse(value);
          }
          ),

            Container(margin: EdgeInsets.only(left: 50),
              child:
            Wrap(children: [
              RaisedButton(onPressed: (){ setState(() {
              });
               res= num1 + num2;} , child: Text("+", style: TextStyle(fontSize: 20, ),
              ),
                color: Colors.amber,
                elevation: 10,
              ),
              SizedBox(width: 30,height: 30,),
              RaisedButton(onPressed: (){setState(() {
              });
               res= num1-num2;} , child: Text("-", style: TextStyle(fontSize: 30,),
              ),
                color: Colors.amber,
                elevation: 10,
              ),
              SizedBox(width: 30,height: 30,),

              RaisedButton(onPressed: (){ setState(() {
              });
               res= num1*num2;} , child: Text("*", style: TextStyle(fontSize: 20,),
              ),
                color: Colors.amber,
                elevation: 10,
              ),
              SizedBox(width: 30,height: 30,),

              RaisedButton(onPressed: (){setState(() {
              });
               res= num1/num2;} , child: Text("/", style: TextStyle(fontSize: 20,),
              ),
                color: Colors.amber,
                elevation: 10,
              ),
              SizedBox(width: 30,height: 30,),
             Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 20,),
                Text("Result : $res" , style: TextStyle(fontSize: 30)
           ),
           ],
           ),
            ],
            ),
            ),
            ],
            ),
            ],
            ),
            ),
          ),
          );
     }
     }
