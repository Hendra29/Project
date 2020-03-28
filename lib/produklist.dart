import 'package:flutter/material.dart';
import './detailproduk.dart';

class ProdukList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("CUSTOM UNIVERSAL")),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            new GestureDetector(
              onTap: () {
                Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                    name: "BMW K100 Custom Z17 Customs",
                    description: "BMW K100 Custom Z17 Customs. Motor ini memang memiliki tampilan yang sangat menawan,"
                    "stylish tanpa mengurangi kesan gaharnya. Dimana pada bagian bodinya memang mengusung konsep retro yang sangat ciamik,"
                     "kemudian menggunakan ban dan juga velg motor yang sangat serasi dengan tampilannya.",
                    price: 20000000,
                    image: "montor1.jpg",
                    star: 4,
                  ),
                ));
              },
              child: ProductBox(
                  name: "BMW K100 Custom Z17 Customs",
                  description: "Montor Custom",
                  price: 20000000,
                  image: "montor1.jpg",
                  star: 4),
            ),
            new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                      name: "Monoshock CB 750 Cafe Racer Andrew Wales",
                      description: "Motor CB memang menjadi salah satu legenda motor yang sangat susah untuk kita lupakan." 
                      "Honda juga merilis CB 750 Cafe Racer yang saat ini juga sudah banyak di modifikasi oleh sebagian orang,",
                      price: 1000000,
                      image: "montor2.jpg",
                      star: 5,
                    ),
                  ));
                },
                child: ProductBox(
                    name: "Monoshock CB 750 Cafe Racer Andrew Wales",
                    description: "Montor Custom",
                    price: 19000000,
                    image: "montor2.jpg",
                    star: 5)),
              new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                      name: "Yamaha RD 350 Scrambler Moto Exotica",
                      description: "Yamaha RD 350 Scrambler Moto Exotica." 
                      "Motor ini adalah motor Yamaha yang di modifikasi oleh Arjun Raina." 
                      "Motor ini memiliki mesin 347 cc dengan 2 silinder 2 tak yang mampu menghasilkan tenaga hingga 39 tenaga kuda.",
                      price: 17000000,
                      image: "montor3.jpg",
                      star: 3,
                    ),
                  ));
                },
                child: ProductBox(
                    name: "Yamaha RD 350 Scrambler Moto Exotica",
                    description: "Montor Custom",
                    price: 17000000,
                    image: "montor3.jpg",
                    star: 3)),
                        new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                      name: "BMW R80 Cafe Racer Ironwood Custom Motorcycles",
                      description: "Motor ini menggunakan mesin transmisi BMW R65," 
                      "sedangkan untuk bagian depannya telah dipasangi dengan lampu dari ural"
                       "dan untuk lampu belakanh Michiel menggunakan lampu Honda CX500." 
                       "Kemudian untuk front fender dan rear subframe dirinya memaksimalkan barang bekas dari motor chopper.",
                      price: 18000000,
                      image: "monotor4.jpg",
                      star: 2,
                    ),
                  ));
                },
                child: ProductBox(
                    name: "BMW R80 Cafe Racer Ironwood Custom Motorcycles",
                    description: "Montor Custom",
                    price: 18000000,
                    image: "monotor4.jpg",
                    star: 2)),
new GestureDetector(
                onTap: () {
                  Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => DetailProduk(
                      name: "Yamaha RD400 Custom Keith Carlson",
                      description: "Yamaha RD400 yang di rombak menjadi cafe racer."
                       "Pencetusnya adalah pria asal Indianapolis, Amerika Serikat bernama Keith Carlson,"
                       "di tangannya motor Yamaha RD400 ",
                      price: 18500000,
                      image: "montor5.jpg",
                      star: 2,
                    ),
                  ));
                },
                child: ProductBox(
                    name: "Yamaha RD400 Custom Keith Carlson",
                    description: "Montor Custom",
                    price: 18500000,
                    image: "montor5.jpg",
                    star: 2)),
          ],
        ));
  }
}
class ProductBox extends StatelessWidget {
  ProductBox(
      {Key key, this.name, this.description, this.price, this.image, this.star})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];

  Widget build(BuildContext context) {
    for (var i = 0; i < star; i++) {
      children.add(new Icon(
        Icons.star,
        size: 10,
        color: Colors.deepOrange,
      ));
    }
    return Container(
        padding: EdgeInsets.all(10),
        child: Card(
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset(
                "assets/" + image,
                width: 150,
              ),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              )),
                          Text(this.description),
                          Text(
                            "Price: " + this.price.toString(),
                            style: TextStyle(color: Colors.red),
                          ),
                          Row(
                            children: <Widget>[
                              Row(
                                children: children,
                              )
                            ],
                          )
                        ],
                      )))
            ])));
  }
}
