import 'dart:async';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sp_practice/sign_up_screen.dart';
import 'package:sp_practice/sp_screen.dart';
import 'package:sp_practice/student_view.dart';
import 'package:sp_practice/teacher_view.dart'; // Adjust import path as per your project



class SplashServices {

  void isLogin(BuildContext context)  async
  {
SharedPreferences sp=await SharedPreferences.getInstance();
String ? email=sp.getString('email');
String ? userType=sp.getString('usertype');
bool isLogin = sp.getBool('isLogin')??false;


    if(isLogin){
     if(userType?.toLowerCase()=='teacher'){
       Timer(
           Duration(seconds: 3),
               () => Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => TeacherView()),
           ));
       Fluttertoast.showToast(msg: "Your are login as Teacher");

     }
     else if(userType?.toLowerCase()=='student'){
       Timer(
           Duration(seconds: 3),
               () => Navigator.push(
             context,
             MaterialPageRoute(builder: (context) => StudentView()),
           ));
       Fluttertoast.showToast(msg: "Your are login as Student");
     }
     else{
             if(userType?.toLowerCase()=='teacher'){
  Timer(
  Duration(seconds: 3),
  () => Navigator.push(
  context,
  MaterialPageRoute(builder: (context) => SignUpScreen()),
  ));
  Fluttertoast.showToast(msg: "Please check your credentials");

       }
     }
    }
    else{
      Timer(
          Duration(seconds: 3),
              () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => SignUpScreen()),
          ));

    }
  }
}
