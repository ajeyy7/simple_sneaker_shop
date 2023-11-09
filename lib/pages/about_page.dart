import 'package:flutter/material.dart';

class About_page extends StatelessWidget {
  const About_page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: const Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.info_outline,size: 60),
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
                "Quality materials: Sneaker Hub products are made with high-quality materials such as leather,"
                " silk, and cashmere, which are more expensive than other materials. Handmade:"
                " Sneaker Hub products, such as handbags and shoes, are handmade by skilled craftsmen, which adds to the cost.",style: TextStyle(
              fontSize: 22
            ),),
          )
        ],
      ),
    );
  }
}
