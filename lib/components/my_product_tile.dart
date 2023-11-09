import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/homeshop.dart';
import 'package:shop_app/models/products.dart';

class My_ProductTile extends StatelessWidget {
  final Products products;

  const My_ProductTile({super.key, required this.products});
void addToCart(BuildContext context){
  showDialog(context: context, builder: (context)=>AlertDialog(
    content: Text("Add This Item to your cart?"),
    actions: [
      MaterialButton(onPressed: (){
        Navigator.pop(context);
  },child: Text("Cancel"),
      ),
  MaterialButton(onPressed: (){
    Navigator.pop(context);
    context.read<Shop>().addtocart(products);
  },child: Text("Yes"),
  )
    ],
  ));
}

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: Theme.of(context).colorScheme.primary),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(25),
      width: 370,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Theme.of(context).colorScheme.secondary,
                    ),
                    width: double.infinity,
                    padding: EdgeInsets.all(25),
                    child: Image(image: AssetImage(products.imagepath),fit: BoxFit.cover,)),
              ),
              SizedBox(height: 25),
              Text(
                products.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 10),
              Tooltip(
                message: products.description,
                child: Text(
                  products.description,
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "\$ " + products.price.toStringAsFixed(2),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.secondary,
                  borderRadius: BorderRadius.circular(4)
                ),
                  child: IconButton(onPressed: ()=>addToCart(context), icon: Icon(Icons.add)))
            ],
          ),
        ],
      ),
    );
  }
}