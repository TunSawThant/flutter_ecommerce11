import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

import 'package:flutter_ecommerce/components/horizontal_lsitview.dart';

import 'package:flutter_ecommerce/components/products.dart';

void main() => runApp(
  new MaterialApp(
    home: HomePage()
  )
);
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  Widget _drawer()=>Drawer(
    child:new ListView(
      children: <Widget>[
        new UserAccountsDrawerHeader(
          accountName: Text('Tun Saw Thant'),
          accountEmail: Text('thant.thura@gmail.com'),
          currentAccountPicture: GestureDetector(
            child: new CircleAvatar(
              backgroundColor: Colors.grey,
              child: Icon(Icons.person,color: Colors.white,),
            ),
          ),
          decoration: new BoxDecoration(
            color: Colors.red,

          ),
        ),
        InkWell(
          child: ListTile(
            title: Text('Home Page'),
            leading: Icon(Icons.home),
          ),
        ),
        InkWell(
          child: ListTile(
            title: Text('My Account'),
            leading: Icon(Icons.person),
          ),
        ),
        InkWell(
          onTap: (){},
          child: ListTile(
            title: Text('My Orders'),
            leading: Icon(Icons.shopping_basket),
          ),
        ),
        InkWell(
          onTap: (){},
          child: ListTile(
            title: Text('Categories'),
            leading: Icon(Icons.dashboard),
          ),
        ),
        InkWell(
          onTap: (){},
          child: ListTile(
            title: Text('Favourites'),
            leading: Icon(Icons.favorite,color: Colors.red,),
          ),
        ),
        Divider(),
        InkWell(
          onTap: (){},
          child: ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings),
          ),
        ),
        InkWell(
          onTap: (){},
          child: ListTile(
            title: Text('About'),
            leading: Icon(Icons.help,color: Colors.blue,),
          ),
        ),
      ],
    ) ,
  );
  @override
  Widget build(BuildContext context) {
    Widget _carousel=new Container(
      height:200.0 ,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage("images/c1.jpg"),
          AssetImage("images/m1.jpeg"),
          AssetImage("images/m2.jpg"),
          AssetImage("images/w1.jpeg"),
          AssetImage("images/w3.jpeg"),
          AssetImage("images/w4.jpeg"),
        ],
//        autoplay: false,
//        animationCurve: Curves.fastOutSlowIn,
//        animationDuration: Duration(milliseconds: 1000),
          dotSize: 4.0,
          indicatorBgPadding: 4.0,
          dotColor: Colors.lightGreenAccent,
      ),

    );


    return new Scaffold(
      appBar: AppBar(
        elevation: 0.1,
        title: Text("Fashapp"),
        backgroundColor: Colors.red,
        actions: <Widget>[
          new IconButton(icon: Icon(Icons.search,color: Colors.white,), onPressed: (){}),
          new IconButton(icon: Icon(Icons.shopping_cart,color: Colors.white,), onPressed: (){})
        ],
      ),
      drawer: _drawer(),
      body: new ListView(
        children: <Widget>[
          //image carousel
          _carousel,
          //padding 'Text'
          new Padding(
              padding: const EdgeInsets.all(4.0),
              child: Text("Categories\t:",style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          //horizontal list view
          HorizontList(),
          //Recent product lists
          new Padding(
            padding: const EdgeInsets.all(6.0),
            child: Text("Recent Products\t:",style: TextStyle(fontWeight: FontWeight.bold),),
          ),
          new Container(
            height:300.0,
            child: Padding(
              padding: const EdgeInsets.only(bottom:20.0),
              child: Products(),
            ),
          ),
        ],
      ),

    );
  }
}

