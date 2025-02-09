import 'package:flutter/material.dart';
import 'package:practice_nike/models/card.dart';
import 'package:practice_nike/models/shoe.dart';
import 'package:provider/provider.dart';

class CardTile extends StatefulWidget {
  final Shoe shoe;

  CardTile({
    super.key,
    required this.shoe,
  });

  @override
  State<CardTile> createState() => _CardTileState();
}

class _CardTileState extends State<CardTile> {
  void deleteTap() {
    Provider.of<CardModel>(context, listen: false)
        .removeCardFromCard(widget.shoe);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.all(12),
      child: SizedBox(
        height: 100,
        child: ListTile(
          leading: Image.asset(
            widget.shoe.imagePath,
            fit: BoxFit.cover,
          ),
          title: Text(
            widget.shoe.name,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          subtitle: Text(widget.shoe.price),
          trailing: IconButton(onPressed: deleteTap, icon: Icon(Icons.delete)),
        ),
      ),
    );
  }
}
