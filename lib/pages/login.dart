import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
      children: [
        SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 50,),
              Text("LOGIN", style: TextStyle(fontWeight: FontWeight.w500),),
              SizedBox(height: 50,),
              SvgPicture.asset("assets/icons/login.svg"),
              SizedBox(height: 25,),
              Container(
                width: 305,
                decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(25)
                ),
                child: TextField(
                  decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Email",
                  prefixIcon: Icon(Icons.person, color: Colors.purple[800],)
                ),
              ),
              ),
              SizedBox(height: 15,),
              Container(
                width: 305,
                decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.circular(25)
                ),
                child: TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Password",
                  prefixIcon: Icon(Icons.lock,size: 19 ,color: Colors.purple[800],),
                  suffixIcon: Icon(Icons.remove_red_eye, color: Colors.purple[800],size: 19,)
                ),
              ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(
              onPressed: (){},
              style: ButtonStyle(
                padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 130, vertical: 14)),
                backgroundColor: MaterialStateProperty.all(Colors.purple[800])
              ),
              child: Text("LOGIN", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
              ),
              SizedBox(height: 35,),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an Account ?"),
                  GestureDetector(
                    onTap: (){Navigator.pushNamed(context, '/signup');},
                    child: Text(" Sign up",style: TextStyle(color: Colors.purple[800], fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
              )
            ],
          ),
        ),
        Positioned(
          child: Image.asset("assets/images/login_bottom.png"),
          bottom: 0,
          right: 0,
          width: 175,
          ),
        Positioned(
          width: 150,
          top: 0,
          child: Image.asset("assets/images/main_top.png"),
        ),
      ],
      )
    );
  }
}