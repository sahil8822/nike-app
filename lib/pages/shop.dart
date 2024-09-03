import 'package:coffee/components/cart_p.dart';
import 'package:coffee/components/shoe_tile.dart';
import 'package:coffee/components/shoe.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  void addShoeToCart(Shoe shoe) {
    Provider.of<CartP>(context, listen: false).addItemToCart(shoe);
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Successfully!'),
              content: Text('Check your cart'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Consumer<CartP>(
        builder: (context, value, child) => Column(
          children: [
            Container(
              padding: EdgeInsets.all(12),
              margin: EdgeInsets.symmetric(horizontal: 25),
              decoration: BoxDecoration(
                  color: Colors.grey[100],
                  borderRadius: BorderRadius.circular(10)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Search'),
                  Icon(Icons.search),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25.0),
              child: Text(
                "everyone flies.. some fly longer than others",
                style: TextStyle(color: Colors.grey[600]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    'Hot Picks 🔥',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                  ),
                  Spacer(),
                  Text(
                    "See all",
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.black),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //list
            Expanded(
                child: ListView.builder(
                    itemCount: 5,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      Shoe shoe = value.getShoList()[index];
                      //return shoe
                      return SingleChildScrollView(
                        child: ShoeTile(
                          shoe: shoe,
                          onTap: () => addShoeToCart(shoe),
                        ),
                      );
                    })),

            Padding(
              padding: const EdgeInsets.only(top: 25, left: 25, right: 15),
              child: Divider(),
            ),
          ],
        ),
      ),
    );
  }
}
