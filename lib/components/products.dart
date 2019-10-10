import 'package:flutter/material.dart';
class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_lists=[
    {
      "name":"Thura",
      "picture":"images/products/blazer1.jpeg",
      "old_price":250,
      "price":200,
    },
    {
      "name":"Zaw",
      "picture":"images/products/blazer2.jpeg",
      "old_price":250,
      "price":200,
    },
    {
      "name":"Red Dresses",
      "picture":"images/products/dress1.jpeg",
      "old_price":250,
      "price":200,
    },
    {
      "name":"Red Dresses",
      "picture":"images/products/dress2.jpeg",
      "old_price":250,
      "price":200,
    },
    {
      "name":"Red Dresses",
      "picture":"images/products/hills1.jpeg",
      "old_price":250,
      "price":200,
    },
    {
      "name":"Red Dresses",
      "picture":"images/products/hills2.jpeg",
      "old_price":250,
      "price":200,
    },
    {
      "name":"Red Dresses",
      "picture":"images/products/pants2.jpeg",
      "old_price":250,
      "price":200,
    },
    {
      "name":"Red Dresses",
      "picture":"images/products/skt1.jpeg",
      "old_price":250,
      "price":200,
    },
    {
      "name":"Red Dresses",
      "picture":"images/products/skt2.jpeg",
      "old_price":250,
      "price":200,
    },
    {
      "name":"Red Dresses",
      "picture":"images/products/skt2.jpeg",
      "old_price":250,
      "price":200,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: product_lists.length,
        gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
        ),
        itemBuilder: (BuildContext context,int index){
        return Single_prod(
          prod_name: product_lists[index]['name'],
          prod_picture: product_lists[index]['picture'],
          prod_old_price:product_lists[index]['old_price'],
          prod_price: product_lists[index]['price'],
        );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;
  Single_prod({
    this.prod_name,
    this.prod_picture,
    this.prod_old_price,
    this.prod_price
});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.0,
      child: Hero(
          tag: prod_name,
          child: InkWell(
            onTap: (){},
            child: GridTile(
              footer:new Container(
                color: Colors.white70,
                child: ListTile(
                  leading:Text(prod_name,
                  style: TextStyle(fontWeight: FontWeight.bold),),
                  title: Text("\$$prod_price",style: TextStyle(fontWeight: FontWeight.w800,color: Colors.red),),
                  subtitle: Text(
                    "\$$prod_old_price",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      decoration:TextDecoration.lineThrough,
                    ),

                  ),
                ),

              ) ,
              child: Image.asset(prod_picture,fit: BoxFit.cover,),

            ),
          )
      ),
    );
  }
}


