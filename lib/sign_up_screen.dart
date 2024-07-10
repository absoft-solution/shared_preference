import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sp_practice/student_view.dart';
import 'package:sp_practice/teacher_view.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}
final _emailController=TextEditingController();
final _passwordController=TextEditingController();
final _userTypeController=TextEditingController();
class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Sign Up"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
        TextFormField(
          controller: _emailController,
          decoration: InputDecoration(
            labelText: "Email",
        border: OutlineInputBorder(),
          ),

        ),
      SizedBox(height: 20,),
      TextFormField(
        controller: _passwordController,

        decoration: InputDecoration(

          labelText: "Password",
          border: OutlineInputBorder(),
        ),
      ),
            SizedBox(height: 20,),
      TextFormField(
        controller: _userTypeController,
        decoration: InputDecoration(
          labelText: "User Type",
          border: OutlineInputBorder(),
        ),),
      SizedBox(height: 20,),

ElevatedButton(onPressed: ()async{
SharedPreferences sp=await SharedPreferences.getInstance();
sp.setString('email', _emailController.text.toString());
sp.setString('password', _passwordController.text.toString());
sp.setString('usertype', _userTypeController.text.toString());
String userType = _userTypeController.text.toString().toLowerCase();
sp.setBool('isLogin', true);
if(userType.trim()=='student'){
  Navigator.push(context, MaterialPageRoute(builder: (context)=>StudentView()));
}
else if(userType.trim()=='teacher'){
  Navigator.push(context, MaterialPageRoute(builder: (context)=>TeacherView()));
}
else{
  Fluttertoast.showToast(msg: "Incorrect Information Inserted");
}
}, child: Text("Sign up")),
          ],
        ),
      ),
    );
  }
}
