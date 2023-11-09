import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  final void Function()? ontap;
  final Widget child;
  const MyButton({super.key,required this.child,required this.ontap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Container(
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(5)
          ),
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: child,
          ),
        ),
      ),
    );
  }
}
