import 'package:flutter/material.dart';

import 'inputdata/Baju/kets.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Categori(
            image_location:
                'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
            image_caption: 'All Product',
          ),
          Categori(
            image_location:
                "https://images.unsplash.com/photo-1561365452-adb940139ffa?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1338&q=80",
            image_caption: "Clothes",
          ),
          Categori(
            image_location:
                'https://images.unsplash.com/photo-1542272604-787c3835535d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=926&q=80',
            image_caption: 'Pants',
          ),
          Categori(
            image_location:
                'https://images.unsplash.com/photo-1613973222743-685b9179f88a?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=700&q=80',
            image_caption: 'Jacket',
          ),
          Categori(
            image_location:
                'https://images.unsplash.com/photo-1463100099107-aa0980c362e6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
            image_caption: 'Shoes',
          ),
          Categori(
            image_location:
                'https://images.unsplash.com/photo-1556306535-0f09a537f0a3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80',
            image_caption: 'Hat',
          ),
        ],
      ),
    );
  }
}

class Categori extends StatelessWidget {
  final String image_location;
  final String image_caption;
  String alamat;
  Categori({this.image_location, this.image_caption, this.alamat});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        margin: EdgeInsets.only(right: 15),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.network(
                image_location,
                width: 120,
                height: 60,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black12,
              ),
              width: 120,
              height: 60,
              child: Text(
                image_caption,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
