import 'package:flutter/material.dart';

class BoughtFoods extends StatefulWidget {
  final String name;
  final String imagePath;
  final int id;
  final String category;
  final double price;
  final double ratings;

  BoughtFoods({this.name, this.imagePath, this.id, this.category, this.price, this.ratings});

  @override
 _BoughtFoodsState createState()=> _BoughtFoodsState();
}

class _BoughtFoodsState extends State<BoughtFoods>{
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
          child: Stack(
        children: <Widget>[
          Container(
            height: 200.0,
            width: 340.0,
            child: Image.asset(widget.imagePath, fit: BoxFit.cover),
          ),
          Positioned(
            left: 0.0,
            bottom: 0.0,
            child: Container(
              height: 60.0,
              width: 340.0,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.black, Colors.black12
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter
                )
              ),
            ),
          ),
          Positioned(
            left: 10.0,
            bottom: 10.0,
            right: 10.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.name,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(Icons.star, color:Theme.of(context).primaryColor, size: 16.0),
                        Icon(Icons.star, color:Theme.of(context).primaryColor, size: 16.0),
                        Icon(Icons.star, color:Theme.of(context).primaryColor, size: 16.0),
                        Icon(Icons.star, color:Theme.of(context).primaryColor, size: 16.0),
                        Icon(Icons.star, color:Theme.of(context).primaryColor, size: 16.0),
                        SizedBox(width: 10.0),
                        Text(
                          "("+widget.ratings.toString()+"Reviews)",
                          style: TextStyle(
                            color: Colors.grey
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Icon(Icons.add_shopping_cart,
                    color:Colors.white,
                    size: 30.0
                    ),
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      widget.price.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0
                      ),
                    ),
                    Text("Min order",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
  
}