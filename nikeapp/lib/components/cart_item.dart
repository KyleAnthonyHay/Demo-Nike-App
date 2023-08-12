import 'package:flutter/material.dart';
import 'package:nikeapp/models/shoe.dart';

class CartItem extends StatelessWidget {
  Shoe shoe;
  CartItem({
    super.key,
    required this.shoe,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
        // leading: Image.asset(widget.shoe.imagePath),
        // title: Text(widget.shoe.name),
        );
  }
}
