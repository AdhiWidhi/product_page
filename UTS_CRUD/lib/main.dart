import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:onlineshoe/produk.dart';
import 'package:onlineshoe/kategori.dart';

import './horizonlist.dart';
import './produk.dart';
import 'inputdata/Baju/formInput.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue.shade700,
            title: Text('Produk Saya',
                style: GoogleFonts.poppins(
                    fontSize: 20, fontWeight: FontWeight.bold)),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Icon(Icons.notifications),
              ),
            ],
          ),
          body: Container(
            margin: EdgeInsets.all(10),
            child: new ListView(
              children: <Widget>[
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(vertical: 2),
                    hintText: "Search your product",
                    prefixIcon:
                        IconButton(icon: Icon(Icons.search), onPressed: () {}),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(40)),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue),
                  height: 40,
                  width: double.maxFinite,
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Kategori()));
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.edit,
                          color: Colors.white,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            "SELL",
                            style: GoogleFonts.poppins(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                //padding widget
                new Padding(
                  padding: const EdgeInsets.only(left: 10, top: 15),
                  child: new Text(
                    'Categories',
                    style: GoogleFonts.poppins(fontSize: 15),
                  ),
                ),
                //panggil class horizontal list view
                HorizontalList(),

                new Padding(
                  padding: const EdgeInsets.only(left: 10, bottom: 10),
                  child: new Text('New Product'),
                ),

                //grid view
                Container(
                  height: 320.0,
                  child: Produk(),
                ),
              ],
            ),
          )),
    );
  }
}
