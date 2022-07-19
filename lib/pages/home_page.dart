import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:food_delivery_app/animations/fade_animation.dart';
import 'package:food_delivery_app/pages/payment_page.dart';

class home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff04112f),
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        elevation: 0,
        leading: const Icon(null),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => payment_dart()),);
            },
            icon: Icon(Icons.shopping_basket, color: Colors.grey[800],),
          )
        ], systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  fade_animation(1, const Text('Food Delivery', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),)),
                  const SizedBox(height: 20,),
                  SizedBox(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        fade_animation(1, makeCategory(isActive: true, title: 'Burger')),
                        fade_animation(1.3, makeCategory(isActive: false, title: 'Pizza')),
                        fade_animation(1.4, makeCategory(isActive: false, title: 'Hot Dog')),
                        fade_animation(1.5, makeCategory(isActive: false, title: 'Pasta')),
                        fade_animation(1.6, makeCategory(isActive: false, title: 'Salad')),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10,),
                ],
              ),
            ),
            fade_animation(1, Padding(
              padding: const EdgeInsets.all(20),
              child: Text('Gratis Ongkir', style: TextStyle(color: Colors.grey[600], fontSize: 20, fontWeight: FontWeight.bold),),
            )),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    fade_animation(1.4, makeItem(image: 'assets/images/2.jpg')),
                    fade_animation(1.5, makeItem(image: 'assets/images/3.jpg')),
                    fade_animation(1.6, makeItem(image: 'assets/images/4.jpg')),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }

  Widget makeCategory({isActive, title}) {
    return AspectRatio(
      aspectRatio: isActive ? 3 : 2.5 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: isActive ? Colors.yellow[700] : Colors.white,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Align(
          child: Text(title, style: TextStyle(color: isActive ? Colors.white : Colors.black, fontSize: 18, fontWeight: isActive ? FontWeight.bold : FontWeight.w400),),
        ),
      ),
    );
  }

  Widget makeItem({image}) {
    return AspectRatio(
      aspectRatio: 1 / 1.5,
      child: GestureDetector(
        child: Container(
          margin: const EdgeInsets.only(right: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            )
          ),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                stops: const [.2, .9],
                colors: [
                  Colors.black.withOpacity(.9),
                  Colors.black.withOpacity(.3),
                ]
              )
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Align(
                    alignment: Alignment.topRight,
                    child: Icon(Icons.favorite, color: Colors.white,),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text("\$ 13.00", style: TextStyle(color: Colors.white, fontSize: 40, fontWeight: FontWeight.bold),),
                      SizedBox(height: 10,),
                      Text("Makanan", style: TextStyle(color: Colors.white, fontSize: 20),)
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
  
