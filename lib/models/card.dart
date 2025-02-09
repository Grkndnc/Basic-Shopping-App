import 'package:flutter/material.dart';
import 'package:practice_nike/models/shoe.dart';

class CardModel extends ChangeNotifier {
  List<Shoe> shoeShop = [
    Shoe(
        name: 'Zoom Freak',
        description: 'The forward-thinking design of his lastest shoe',
        imagePath: 'lib/images/malvestida-DMl5gG0yWWY-unsplash.jpg',
        price: '420'),
    Shoe(
        name: 'Nike Pegasus 41',
        description:
            'İki Air Zoom birimi ve ReactX köpük orta tabanla daha hafif ve enerji kazanımlı bir deneyim yaşarsın.',
        imagePath: 'lib/images/thamara-maura-FfEDxTa6Hh4-unsplash.jpg',
        price: '520'),
    Shoe(
        name: 'Nike Court Legacy Lift',
        description:
            'Platform orta taban ve hayvan desenli Swoosh, dikkat çekerken her kombine uyum sağlar. ',
        imagePath: 'lib/images/peri-stojnic-r3rbIwZ9DJc-unsplash.jpg',
        price: '220'),
    Shoe(
        name: 'Nike Air Force ',
        description:
            'Bu modern model, kaliteli deri üst kısma yayılmış yıldız şeklindeki perçinlerle tasarımı ileriye taşıyor.',
        imagePath: 'lib/images/ayakkabi.png',
        price: '420')
  ];
  // List of item user card
  List<Shoe> _userCard = [];
// get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get Card
  List<Shoe> getUserCard() {
    return _userCard;
  }

  void addToCard(Shoe shoe) {
    return _userCard.add(shoe);
    // ignore: dead_code
    notifyListeners();
  }

  void removeCardFromCard(Shoe shoe) {
    _userCard.remove(shoe);
    // ignore: dead_code
    notifyListeners();
  }
}
