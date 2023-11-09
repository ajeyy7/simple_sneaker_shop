import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/components/my_button.dart';
import 'package:shop_app/components/my_drawer.dart';
import 'package:shop_app/components/my_product_tile.dart';
import 'package:shop_app/models/homeshop.dart';
import 'package:shop_app/models/products.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({super.key});

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  @override
  Widget build(BuildContext context) {
    final products = context
        .watch<Shop>()
        .shop;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(onPressed: ()=> Navigator.pushNamed(context,'/cart_page'), icon: Icon(Icons.shopping_cart_outlined))
        ],
        elevation: 0,
        foregroundColor: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        title: Text("Sneaker Hub"),
      ),
      drawer: My_Drawer(),
      body: SizedBox(
        height: 560,
        child: ListView.builder(
            itemCount: products.length,
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.all(15),
            itemBuilder: (context, index) {
          final product=products[index];
          return My_ProductTile(products: product);
        }),
      ),
    );
  }
}
