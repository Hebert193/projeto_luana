// pega os itens do provider
import 'package:flutter/material.dart';
import 'dart:io';

class GreatPlaces with ChangeNotifier {
  List<Place> _items = [];

  List<Place> get items {
    return [..._items];
  }

  int get itemsCount {
    return _items.length; // ois intens que virao 
  }

  Place itemByIndex(int index) {
    return _items[index]; // retorna o item pelo id 
  }



  void addPlace(String title, File image, LatLng position) {
    final newPlace = Place(
      id: DateTime.now().toString(),
      title: title,
      image: image,
      location: PlaceLocation(
        latitude: position.latitude,
        longitude: position.longitude,
      ),
    );
    _items.add(newPlace);
    notifyListeners();
  }
}
