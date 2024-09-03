import 'package:coffee/components/cart_item.dart';
import 'package:coffee/components/cart_p.dart';
import 'package:coffee/components/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Cart extends StatelessWidget {
  const Cart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Consumer<CartP>(
            builder: (context, value, child) => Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'My Cart',
                        style: TextStyle(
                            fontSize: 24, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Expanded(
                          child: ListView.builder(
                        itemCount: value.getUserCart().length,
                        itemBuilder: (context, index) {
                          Shoe individualShoe = value.getUserCart()[index];
                          return CartItem(
                            shoe: individualShoe,
                          );
                        },
                      ))
                    ],
                  ),
                )));
  }
}
