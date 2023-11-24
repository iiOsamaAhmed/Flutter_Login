import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

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
              Text("SIGNUP", style: TextStyle(fontWeight: FontWeight.w500),),
              SizedBox(height: 50,),
              SvgPicture.asset("assets/icons/signup.svg"),
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
              child: Text("SIGNUP", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500)),
              ),
              SizedBox(height: 35,),
              SizedBox(
                width: double.infinity,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an Account ?"),
                  GestureDetector(
                    onTap: (){Navigator.pushNamed(context, '/login');},
                    child: Text(" Sign in",style: TextStyle(color: Colors.purple[800], fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
              ),
              SizedBox(height: 10,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Expanded(child: Divider(indent: 35, endIndent: 5,)),
                  Text("OR",style: TextStyle(color: Colors.purple[800], fontWeight: FontWeight.w500),),
                  Expanded(child: Divider(indent: 5, endIndent: 35,)),
                ],
              ),
              SizedBox(height: 15,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color.fromRGBO(156, 39, 176, 216))
                    ),
                    child: SvgPicture.asset("assets/icons/facebook.svg", color: Colors.purple[800],width: 30,),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color.fromRGBO(156, 39, 176, 216))
                    ),
                    child: SvgPicture.asset("assets/icons/twitter.svg", color: Colors.purple[800],width: 25,),
                  ),
                  SizedBox(width: 20,),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(color: Color.fromRGBO(156, 39, 176, 216))
                    ),
                    child: SvgPicture.asset("assets/icons/google-plus.svg", color: Colors.purple[800],width: 30,),
                  ),
                ],
              )
            ],
          ),
        ),
        Positioned(
          width: 150,
          top: 0,
          child: Image.asset("assets/images/signup_top.png"),
        ),
        Positioned(
          width: 75,
          bottom: 0,
          child: Image.asset("assets/images/main_bottom.png"),
          ),
      ],
      )
    );
  }
}