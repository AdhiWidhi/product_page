import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onlineshoe/inputdata/Baju/formInput.dart';
import 'package:onlineshoe/inputdata/Jaket/inputjaket.dart';
import 'package:onlineshoe/inputdata/Sepatu/inputsepatu.dart';
import 'package:onlineshoe/inputdata/Topi/inputtopi.dart';
import 'package:onlineshoe/inputdata/celana/inputcelana.dart';

class Kategori extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade700,
        title: Text('Pilih Kategori',
            style:
                GoogleFonts.poppins(fontSize: 20, fontWeight: FontWeight.bold)),
      ),
      body: SingleChildScrollView(
        child: Container(
            margin: EdgeInsets.all(10),
            child: Column(
              children: [
                InkWell(
                  splashColor: Colors.blue,
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FormInput()));
                  },
                  child: Container(
                    height: 80,
                    child: Card(
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              "https://images.unsplash.com/photo-1561365452-adb940139ffa?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1338&q=80",
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 60,
                          ),
                          Text(
                            "Baju Pria & Wanita",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.blue,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FormInputCelana()));
                  },
                  child: Container(
                    height: 80,
                    child: Card(
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              "https://images.unsplash.com/photo-1542272604-787c3835535d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=926&q=80",
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Text(
                            "Celana Pria & Wanita",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.blue,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FormInputJaket()));
                  },
                  child: Container(
                    height: 80,
                    child: Card(
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              "https://d2pa5gi5n2e1an.cloudfront.net/service/id/images/mens-fashion/price/9944/9944371/MF_Musim_Gugur_Baru_Jaket_Denim_Pria_Dicuci_Retro_Fashion_Coklat_Pink_Beige_Slim_Kasual_Pilot_Mantel_Pria_Lebih_Tahan_Dr_Streetwear_Pria_Pakaian_1.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 85,
                          ),
                          Text(
                            "Jaket Pria & Wanita",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.blue,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FormInputSepatu()));
                  },
                  child: Container(
                    height: 80,
                    child: Card(
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              "https://images.unsplash.com/photo-1463100099107-aa0980c362e6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "Sepatu Pria & Wanita",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                InkWell(
                  splashColor: Colors.blue,
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => FormInputTopi()));
                  },
                  child: Container(
                    height: 80,
                    child: Card(
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.network(
                              "https://images.unsplash.com/photo-1556306535-0f09a537f0a3?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80",
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Text(
                            "Topi Pria & Wanita",
                            style: GoogleFonts.poppins(
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
