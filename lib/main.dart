import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Class in Flutter',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepPurple,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: RowNColumn (), debugShowCheckedModeBanner: false,
    );
  }
}

class RowNColumn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: new Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.fromLTRB(20, 70, 20, 0),
        child: Column(
          children: <Widget>[
            Text(
              'Hello!',
              style: Theme.of(context).textTheme.headline5,
            ),
            Text('Nama Saya : Syaikha Rachmah SK',
              textAlign: TextAlign.center,
            ),
            Text('Kelas : XII RPL 6',
            ),
            Text('No Absen : 13',
            ),
            Padding(
                padding: EdgeInsets.only(bottom: 30)
            ),
            new MaterialButton(onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ListViewWidget()));
            }, child: Text('List View'),
              padding: const EdgeInsets.all(20),
              color: Colors.deepPurple,
              textColor: Colors.white,
            ),
            Padding(
                padding: EdgeInsets.only(bottom: 3)
            ),
            new MaterialButton(onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => GridViewWidget()));
            }, child: Text('Grid View'),
              padding: const EdgeInsets.all(20),
              color: Colors.deepPurple,
              textColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}

class GridViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Grid View and Row",
          ),
          centerTitle: true,
        ),
        //backgroundColor: Colors.blue[100],
        body: Container(

          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: GridView.count(
              crossAxisCount: 2,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0),),
                        color: Colors.brown
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Nama: ", textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
                          Text("Syaikha Rachmah SK ", textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0),),
                        color: Colors.brown
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Kelas: ", textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
                          Text("XII RPL 6", textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0),),
                        color: Colors.brown
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("No absen: ", textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
                          Text("13", textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0),),
                        color: Colors.brown
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Sekolah: ", textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
                          Text("SMK Telkom Purwokerto", textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0),),
                        color: Colors.brown
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("No HP: ", textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
                          Text("085230776058", textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20.0),),
                        color: Colors.brown
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Alamat: ", textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
                          Text("Purbalingga", textAlign: TextAlign.center, style: TextStyle(color: Colors.white),),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
    );  }
}

class ListViewWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List View and Column"),
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      body: new ListView(
        children: <Widget>[
          new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.person, color: Colors.deepPurple),
              Text("Nama Lengkap : Syaikha Rachmah SK", textAlign: TextAlign.left,),
              Padding(
                  padding: EdgeInsets.only(bottom: 15)
              ),
            ],
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.class_, color: Colors.deepPurple),
              Text("Kelas : XII RPL 6"),
              Padding(
                  padding: EdgeInsets.only(bottom: 15)
              ),
            ],
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.school, color: Colors.deepPurple),
              Text("Sekolah : SMK Telkom Purwokerto"),
              Padding(
                  padding: EdgeInsets.only(bottom: 15)
              ),
            ],
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.phone, color: Colors.deepPurple),
              Text("No HP : 085230776058"),
              Padding(
                  padding: EdgeInsets.only(bottom: 15)
              ),
            ],
          ),
          new Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Icon(Icons.home, color: Colors.deepPurple),
              Text("Alamat : Purbalingga, Jawa Tengah"),
              Padding(
                  padding: EdgeInsets.only(bottom: 15)
              ),
            ],
          ),
        ],
      ),
    );
  }
}
