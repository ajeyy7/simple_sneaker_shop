import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../components/my_listtile.dart';

class Profile_Page extends StatefulWidget {
  const Profile_Page({super.key});

  @override
  State<Profile_Page> createState() => _Profile_PageState();
}

class _Profile_PageState extends State<Profile_Page> {
  late SharedPreferences prefrences;
  late  String username="";
  @override
  void initState() {
    fetchData();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text("Profile"),
      ),
      body:
        Column(
          children: [
             Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Hello, ",
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.w400),
                          ),
                          Text(
                            username,
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.w500),
                          ),

                        ],
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 45,
                    backgroundImage: AssetImage("assets/images/shoe4.jpg"),
                  ),
                ],
              ),
            ),
            My_List_Tile(ontap: (){}, text: "Settings", icon: Icon(Icons.settings)),
            My_List_Tile(ontap: (){}, text: "Order", icon: Icon(Icons.shopping_cart_rounded)),
            My_List_Tile(ontap: (){
              Navigator.pushNamed(context, '/about_page');
            }, text: "About", icon: Icon(Icons.settings))


          ],
        ),
    );
  }

  void fetchData()async{
    prefrences =await SharedPreferences.getInstance();
    setState(() {
      username=prefrences.getString('usrname')!;
    });

  }
}
