import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_application/providers/greate_places.dart';
import 'package:flutter_application/models/place.dart';

class PlaceFormScreen extends StatefulWidget {
  const PlaceFormScreen({Key? key}) : super(key: key);
  
  @override
  _PlaceFormScreenState createState() => _PlaceFormScreenState();
}

class _PlaceFormScreenState extends State<PlaceFormScreen>{
  final _titleController = TextEditingController();
  File _pickedImage;
  LatLng _pickedPosition;

void _selectImage(File pickedImage){
  setState(() {
    _pickedImage = pickedImage;
    
  });
}
void _selecPosition(LatLng position){
   setState(() {
    _pickedPosition = position;
    
  });
}

bool _isValidForm(){
  return _titleController.text.isNotEmpty &&
    _pickedImage != null &&
    _pickedPosition != null;
}

void _submitForm(){
  if (! _isValidForm()) return;

  Provider.of<GreatPlaces>(context, listen: false). addPlace(
    _titleController.text,
    _pickedImage,
    _pickedPosition,
  );
  Navigator.of(context).pop();
}

}

class _PlaceFormScreenState extends State<PlaceFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text ('Novo Lugar'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded( // ocupa todo o espaço disponivel
          child: SingleChildScrollView(  // permite rolagem

            child:Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _titleController,
                    decoration: InputDecoration(
                      labelText: 'Título',
                    ),
                  ),
                  SizedBox(height: 10),
                  ImageInput(this._selectImage),
                  SizedBox(height: 10),
                  LocationInput(this._selectPosition),
                ],
              ),
              ),
          )
          ),
    RaisedButton.icon(
      icon: Icon(Icons.add),
      label: Text('Adicionar'),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.black, backgroundColor: Theme.of(context).
        colorScheme.secondary,
        elevation: 0,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: _submitForm,
    ),

        ],
      ),
      );
  
  }
}