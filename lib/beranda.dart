import 'package:flutter/material.dart';

class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

class _BerandaState extends State<Beranda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title:
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
          Text('Beranda'),
        ]),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print('Click search');
            },
          ),
          IconButton(
            icon: Icon(Icons.notifications_active),
            onPressed: () {
              print('Click start');
            },
          ),
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text("Hendra Sudarmawan"),
              accountEmail: new Text("hendra.sudarmawan@undiksha.ac.id"),
              currentAccountPicture: new GestureDetector(
                onTap: () {},
                child: new CircleAvatar(
                  backgroundImage: new AssetImage(
                      'assets/profil.jpeg'),
                ),
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/bg_profile.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            new ListTile(
              title: new Text('Notifications'),
              trailing: new Icon(Icons.notifications_none),
            ),
            new ListTile(
              title: new Text('Wishlist'),
              trailing: new Icon(Icons.bookmark_border),
            ),
            new ListTile(
              title: new Text('Akun'),
              trailing: new Icon(Icons.verified_user),
            ),
            Divider(height: 2,),
            new ListTile(
              title: new Text('setting'),
              trailing: new Icon(Icons.settings),
            ),
          ],
        ),
      ),
      body: new ListView(
        children: <Widget>[
          Image.asset("assets/beranda.jpg"),
          Container(
            color: Colors.blueAccent[100],
            padding: const EdgeInsets.all(10),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Rp 21.000.000',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        'MONTOR CUSTOM',
                        style: TextStyle(
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.local_offer,
                  color: Colors.red[500],
                ),
                Text(' Up 75%'),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(color: Theme.of(context).dividerColor)),
            ),

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[

                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.grid_on, color: Colors.blue),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "Semua Kategori",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.motorcycle ,color: Colors.blue),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "Motor",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.local_car_wash, color: Colors.blue),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "Mobil",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(Icons.more_horiz, color: Colors.blue),
                    Container(
                      margin: const EdgeInsets.only(top: 8),
                      child: Text(
                        "Aksesoris",
                        style: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: new BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.orange, Colors.yellow],
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'FREE ONGKIR',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Text(
                        'Diskon Up to 75%',
                        style: TextStyle(
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(' Visit Now !'),
              ],
            ),
          )
        ],
      ),
    );
  }
}
