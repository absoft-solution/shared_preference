import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sp_practice/sign_up_screen.dart';

class StudentView extends StatefulWidget {
  const StudentView({super.key});

  @override
  State<StudentView> createState() => _StudentViewState();
}

class _StudentViewState extends State<StudentView> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(


     body: Center(child: Column(
       children: [
         Text("Student View",style: TextStyle(fontSize: 48),

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
