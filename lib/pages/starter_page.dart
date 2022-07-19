import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:food_delivery_app/pages/home_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:food_delivery_app/animations/fade_animation.dart';

class starter_page extends StatefulWidget {
  @override
  _StarterPageState createState() => _StarterPageState();
}

class _StarterPageState extends State<starter_page> with TickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  bool _textVisible = true;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 100)
    );

    _animation = Tween<double>(
      begin: 1.0,
      end: 25.0
    ).animate(_animationController);

    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();

    super.dispose();
  }

  void _onTap() {
    setState(() {
      _textVisible = false;
    });

    _animationController.forward().then((f) => 
      Navigator.push(context, PageTransition(type: PageTransitionType.fade, child: home_page()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/1.jpg'), fit: BoxFit.cover)),
          child: Container(
            decoration: BoxDecoration(
                gradient:
                    LinearGradient(begin: Alignment.bottomCenter, colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.8),
              Colors.black.withOpacity(.2)
            ])),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  fade_animation(.5,const Text(
                    'Menerima Pesanan Untuk Seluruh Indonesia',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.bold),
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Lihat restoran terdekat \nMenambah lokasi',
                      style: TextStyle(
                          color: Colors.white, height: 1.4, fontSize: 18)),
                  const SizedBox(
                    height: 30,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        gradient: const LinearGradient(
                            colors: [Colors.yellow, Colors.orange])),
                    child: MaterialButton(
                      minWidth: double.infinity,
                      onPressed: () => _onTap(),
                      child: const Text(
                        'Mulai',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                      child: Text("Sekarang mengantar ke rumahmu 24/7",
                          style:
                              TextStyle(color: Colors.white70, fontSize: 15))),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
