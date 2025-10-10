// gerenciatr imagem
 
import 'package:flutter/material.dart';
 
class ImageInput extends StatefulWidget {
  const ImageInput({Key? key}) : super(key: key);
 
  @override
  State<ImageInput> createState() => _ImageInputState();
}
 
class _ImageInputState extends State<ImageInput> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
          ),
          alignment: Alignment.center,
          child: Text('Nenhuma imagem!'),
        ),
        SizedBox(width: 10),
        
        Expanded(
          child: ElevatedButton.icon(
            icon: Icon(Icons.camera),
            label: Text('Selecionar Imagem'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.black,
              backgroundColor: Theme.of(context).colorScheme.primary,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
 