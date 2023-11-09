import 'package:flutter/material.dart';
import 'package:shop_app/components/my_listtile.dart';

class My_Drawer extends StatelessWidget {
  const My_Drawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Column(
          children: [
            DrawerHeader(
                child: Icon(
                  Icons.scatter_plot_outlined,
                  size: 95,
                  color: Colors.grey.shade900,
                )),
            My_List_Tile(
                ontap: () {
                  Navigator.of(context).pop();
                },
                text: "Shop",
                icon: Icon(Icons.shopping_bag_outlined)),
            My_List_Tile(
                ontap: () {
            Navigator.of(context).pop();
            Navigator.pushNamed(context, '/cart_page');
                },
                text: "Cart",
                icon: Icon(Icons.shopping_cart_outlined)),
            My_List_Tile(
                ontap: () {
            Navigator.pop(context);
            Navigator.pushNamed(context, '/about_page');
                },
                text: "About",
                icon: Icon(Icons.info_outline)),
          ],
        ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 29),
                child: My_List_Tile(
                    ontap: () {
                      Navigator.pushNamed(context, '/intro_page');

                    },
                    text: "Exit",
                    icon: Icon(Icons.exit_to_app_outlined)),
              ),
            ],
          ),

        ],
      ),
    );
  }
}
