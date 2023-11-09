

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../components/my_text_field.dart';

class LoginPage extends StatefulWidget {


  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userController = TextEditingController();
  final passController = TextEditingController();
  final namecontroller=TextEditingController();
  late SharedPreferences preferences;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 100),
              const Icon(
                Icons.scatter_plot_outlined,
                size: 100,
              ),
              const SizedBox(height: 30),
              const Text(
                "Welcome User!",
                style: TextStyle(color: Colors.blueGrey),
              ),
              const SizedBox(height: 20),
              MyTextfield(
                  controller: namecontroller,
                  obscureText: false,
                  hintText: "UserName"),
              const SizedBox(height: 20),
              MyTextfield(
                  controller: userController,
                  obscureText: false,
                  hintText: "Email"),
              SizedBox(height: 18),
              MyTextfield(
                  controller: passController,
                  obscureText: true,
                  hintText: 'password'),
              SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 200),
                child: Text(
                  "Forgot Password?",
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(6)),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black),
                        onPressed: () async{
                          ///shared preffrences object
                          preferences=await SharedPreferences.getInstance();
                          String username=namecontroller.text;
                          String email=userController.text;
                          String passwrd=passController.text;


                          if(username!=""&& email!=""&&passwrd!=""){
                            preferences.setString('usrname', username);
                            preferences.setString('pwrd', passwrd);
                            Navigator.pushNamed(context, '/intro_page');

                          }
                          namecontroller.text="";
                          userController.text="";
                          passController.text="";
                        },
                        child: Text('Login'))),
              ),
              SizedBox(height: 20),
              const Text("Or continue with"),
              SizedBox(height: 20),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Not a member ?"),
                  TextButton(
                      onPressed: () {
                      },
                      child: const Text(
                        "Register Now",
                        style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black54),
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
