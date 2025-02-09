import 'package:flutter/material.dart';
import 'package:practice_nike/components/shoe_tile.dart';
import 'package:practice_nike/models/card.dart';
import 'package:practice_nike/models/shoe.dart';
import 'package:provider/provider.dart';

class Shoppage extends StatefulWidget {
  const Shoppage({super.key});

  @override
  State<Shoppage> createState() => _ShoppageState();
}

class _ShoppageState extends State<Shoppage> {
  void addShoeToCard(Shoe shoe) {
    Provider.of<CardModel>(context, listen: false).addToCard(shoe);
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
              title: Text('Successfuly Added'),
              content: Text('Please Check Your Card'),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<CardModel>(
      builder: (context, value, child) => Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 25),
            padding: EdgeInsets.all(12),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(12)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Search',
                  style: TextStyle(color: Colors.grey),
                ),
                Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Everyone flies .. Some fly longer then others',
            style: TextStyle(color: Colors.grey),
          ),
          SizedBox(
            height: 25,
          ),
          Padding(
            padding: EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Hot Picks 🔥',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 4,
              itemBuilder: (context, index) {
                Shoe shoe = value.getShoeList()[index];
                return ShoeTile(
                  onTap: () => addShoeToCard(shoe),
                  shoe: shoe,
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Divider(
              color: Colors.grey.shade300,
            ),
          )
        ],
      ),
    );
  }
}
