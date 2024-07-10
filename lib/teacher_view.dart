import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sp_practice/sign_up_screen.dart';

class TeacherView extends StatefulWidget {
  const TeacherView({super.key});

  @override
  State<TeacherView> createState() => _TeacherViewState();
}

class _TeacherViewState extends State<TeacherView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        children: [
          Text("Teacher View",style: TextStyle(fontSize: 48),

          ),
          SizedBox(height: 20,),
          ElevatedButton(onPressed: ()async{
            SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
            sharedPreferences.clear();
            Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
          }, child: Text("Logout")),
        ],
      )),
    );
  }
}
