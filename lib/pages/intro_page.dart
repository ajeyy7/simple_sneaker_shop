import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/components/my_button.dart';


class Intro_Page extends StatefulWidget {
  const Intro_Page({super.key});

  @override
  State<Intro_Page> createState() => _Intro_PageState();
}

class _Intro_PageState extends State<Intro_Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.scatter_plot_outlined,
              size: 95,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),
            SizedBox(height: 15),
            Text(
              "Sneaker Hub",
              style: GoogleFonts.eduTasBeginner(fontWeight: FontWeight.w500,fontSize: 33),
            ),
            SizedBox(height: 8),
            Text("Premium Quality Products",
              style: GoogleFonts.eduTasBeginner(fontWeight: FontWeight.w500,fontSize:15),),
            SizedBox(height: 30),
            MyButton(
                child: Icon(Icons.arrow_forward_ios_rounded),
                ontap: () => Navigator.pushNamed(context, '/bottomnav_page'))
          ],
        ),
      ),
    );
  }
}
