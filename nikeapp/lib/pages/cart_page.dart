import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/shoe.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(
              'My Cart',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          const SizedBox(height: 10),
          Expanded(child: ListView.builder(
            itemBuilder: (context, index) {
              //get individual shoe
              Shoe individualShow = value.getUserCart()[index];
              // return the cart Item
              //return CartItem();
            },
          ))
        ],
      ),
    );
  }
}
