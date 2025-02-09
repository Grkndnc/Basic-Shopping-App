import 'package:flutter/material.dart';
import 'package:practice_nike/components/card_tile.dart';
import 'package:practice_nike/models/card.dart';
import 'package:practice_nike/models/shoe.dart';
import 'package:provider/provider.dart';

class Cardpage extends StatefulWidget {
  const Cardpage({super.key});

  @override
  State<Cardpage> createState() => _CardpageState();
}

class _CardpageState extends State<Cardpage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<CardModel>(
      builder: (context, value, child) => Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Card',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCard().length,
                itemBuilder: (context, index) {
                  Shoe individualShoe = value.getUserCard()[index];

                  return CardTile(
                    shoe: individualShoe,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
