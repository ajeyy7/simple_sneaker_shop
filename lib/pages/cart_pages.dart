import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/components/my_button.dart';

import '../models/homeshop.dart';
import '../models/products.dart';

class Cart_Page extends StatelessWidget {
  Cart_Page({super.key});

  void removeItemFromCart(BuildContext context, Products products) {
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              content: Text("Do you want to remove this item?"),
              actions: [
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Cancel"),
                ),
                MaterialButton(
                  onPressed: () {
                    Navigator.pop(context);
                    context.read<Shop>().removefromcart(products);
                  },
                  child: Text("Yes"),
                )
              ],
            ));
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.watch<Shop>().cart;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        foregroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Cart Page'),
      ),
      body: Column(
        children: [
          Expanded(
              child: cart.isEmpty?Center(child: Text('Your cart is empty')) :ListView.builder(
                  itemCount: cart.length,
                  itemBuilder: (context, index) {
                    final item = cart[index];
                    return ListTile(
                      title: Text(item.name),
                      subtitle: Text(item.price.toStringAsFixed(2)),
                      trailing: IconButton(
                        icon: Icon(Icons.remove),
                        onPressed: () => removeItemFromCart(context, item),
                      ),
                    );
                  })),
          Padding(
            padding: const EdgeInsets.all(50.0),
            child: MyButton(child: Text("Pay Now"), ontap:()=>payButtonPressed(context)),
          )
        ],
      ),
    );
  }

 void payButtonPressed(BuildContext context) {
    showDialog(context: context, builder: (context)=>AlertDialog(
      content: Text("Connect this app to payment backend to pay"),
    ));
 }
}
