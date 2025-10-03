import 'package:flutter/material.dart';

class PlaceFormScreen extends StatelessWidget {
  const PlaceFormScreen({key? key}) : super(key: key);

  @override
  State<PlaceFormScreen> createState() => _PlaceFormScreenState();
}

  class _PlaceFormScreenState extends State<PlaceFormScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Novo Lugar'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget> [
          Expanded(
            child:Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  TextField(
                    controller: _titleController,
                    decoration: const InputDecoration(
                      labelText: 'Título'.
                    ),
                  ),
                  Size(height: 10),
                  ImageInput(this._selectImage),
                  SizedBox(height: 10),
                  LocationInput(this._selectPosition),
                ],
                )
             )
            )    
        ],
      )
    );
  }
}