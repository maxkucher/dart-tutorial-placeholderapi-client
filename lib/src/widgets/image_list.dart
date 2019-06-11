import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageList extends StatelessWidget{
  final List<ImageModel> imageList;

  ImageList(this.imageList);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      itemCount: imageList.length,
      itemBuilder: (context, int index){
        return  buildImage(imageList[index]);
      },
    );
  }

  Widget buildImage(ImageModel image){
    return Container(
      margin: EdgeInsets.all(20.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        border: Border.all(
            color: Colors.grey,
            width: 2
        ),
      ),

      child: Column(
        children: <Widget>[
          Image.network(image.url),
          Padding(
            child: Text(image.title),
            padding: EdgeInsets.all(5.0),
          ),
        ],
      ),
    );
  }

}