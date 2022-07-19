import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_app/theme.dart';

class payment_dart extends StatelessWidget {
  final List<int> numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: const Color(0xff04112f),
        body: Padding(
          padding: const EdgeInsets.only(
              top: 50.0, right: 25.0, bottom: 50.0, left: 25.0),
          child: Column(
            children: [
              Center(
                  child: Image.asset('assets/images/icon.png',
                      width: 267, height: 200)),
              Padding(
                padding:
                    const EdgeInsets.only(top: 50.0, right: 90.0, left: 90.0),
                child: Row(
                  children: [
                    Text(
                      'Your Order',
                      style: titleTextStyle,
                    ),
                    
                    Text('Food', style: titleProTextStyle)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16.0, left: 65.0, right: 65.0),
                child: Text(
                  'Makanan anda akan segera diantar', style: subTitleTextStyle, textAlign: TextAlign.center,
                ),
              ),
              // ListView.separated(
              //   itemBuilder: (BuildContext context, int index) {
              //     return Container(
              //       height: 50,
              //       decoration: BoxDecoration(
              //         color: Colors.grey,
              //         border: Border.all(color: Colors.black),
              //       ),
              //       child: Center(
              //         child: Text(
              //           '${numberList[index]}',
              //           style: TextStyle(fontSize: 50),
              //         ),
              //       ),
              //     );
              //   },
              //   separatorBuilder: (BuildContext context, int index) {
              //     return Divider();
              //   },
              //   itemCount: numberList.length,
              // ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0, left: 25.0, right: 25.0),
                child: Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    color: const Color(0xff04112f),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 25.0),
                      ),
                      Text(
                        'Burger Chicken', style: planTextStyle, textAlign: TextAlign.start,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 110.0),
                      ),
                      Text(
                        '1', style: planTextStyle, textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),  
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0, left: 25.0, right: 25.0),
                child: Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    color: const Color(0xff04112f),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 25.0),
                      ),
                      Text(
                        'French Fries', style: planTextStyle, textAlign: TextAlign.start,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 130.0),
                      ),
                      Text(
                        '3', style: planTextStyle, textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),  
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0, left: 25.0, right: 25.0),
                child: Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    color: const Color(0xff04112f),
                    border: Border.all(color: Colors.white),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Row(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(left: 25.0),
                      ),
                      Text(
                        'Soda Drink', style: planTextStyle, textAlign: TextAlign.start,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 140.0),
                      ),
                      Text(
                        '2', style: planTextStyle, textAlign: TextAlign.start,
                      ),
                    ],
                  ),
                ),  
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0, left: 25.0, right: 25.0),
                child: Container(
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  gradient: const LinearGradient(
                  colors: [Colors.yellow, Colors.orange])),
                  child: MaterialButton(
                    minWidth: double.infinity,
                    onPressed: () {},
                    child: const Text(
                      'Order Now',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
