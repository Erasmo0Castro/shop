import 'package:flutter/material.dart';
import 'package:lishop/Widgets/widget_support.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child:Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/2.5,
              decoration: const BoxDecoration(
                gradient: LinearGradient(colors: [
                 
                  Color.fromARGB(255, 61, 3, 3),
                  Color.fromARGB(255, 136, 7, 7),
                ],),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top:
               MediaQuery.of(context).size.height/3),
              height: MediaQuery.of(context).size.height/2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white, borderRadius:
                 BorderRadius.only(
                  topLeft: Radius.circular(40,),
                  topRight: Radius.circular(40),
              ),
            ),
            child: const Text("d"),
        ),
        Container(
          margin: EdgeInsets.only(top: 50.0),
          child: Column(
            children: [
        
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200.0),
                  child: Image.asset("images/logo_licorStore.png",
                  
                   width: MediaQuery.of(context).size.width/1.5,
                   fit: BoxFit.cover,),
                ),
              ),
          Container(
            margin: EdgeInsets.only(top: 60.0),
            child: Column(
              children: [
                Text("Login", style: AppWidget.semiBoldTextFeildStyle(),),
              ],
            ),
        ),
            ],
          ),
        )],
        ),
      ),
    );
  }
}