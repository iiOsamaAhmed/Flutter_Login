import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:flutter_svg/flutter_svg.dart';

class Welcom extends StatelessWidget {
  const Welcom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 44),
              Text("Welomce to EDU", style: TextStyle(fontSize: 23, fontFamily: "myfont"),),
              SizedBox(height: 75),
              SvgPicture.asset("assets/icons/chat.svg"),
              SizedBox(height: 100),
                ElevatedButton(
                onPressed: (){Navigator.pushNamed(context, '/login');},
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 100)),
                  backgroundColor: MaterialStateProperty.all(Colors.purple[800])
                ),
                child: Text("LOGIN", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
                ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: (){Navigator.pushNamed(context, '/signup');},
                child: Text("SIGNUP", style: TextStyle(color: Colors.black87, fontWeight: FontWeight.w500)),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 95)),
                  backgroundColor: MaterialStateProperty.all(Colors.purple[50])
                ),
                ),
            ],
          ),
          ),
          Positioned(
            width: 150,
            top: 0,
            child: Image.asset("assets/images/main_top.png"),
          ),
          Positioned(
            width: 75,
            bottom: 0,
            child: Image.asset("assets/images/main_bottom.png"),
          ),
          
        ],
      ),
    );
  }
}
