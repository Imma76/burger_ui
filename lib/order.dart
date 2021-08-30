import 'package:flutter/material.dart';

class Order extends StatelessWidget {
//  const Order({ Key? key }) : super(//key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        leading: Icon(
          Icons.menu,
          color: Color(0xffDE1528),
        ),
        title: Text(
          'Burger',
          style: TextStyle(color: Color(0xffDE1528)),
        ),
        centerTitle: true,
      ),
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height / 25,
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Container(
              child: Column(
                children: [
                  Center(child: Image.asset('images/ham2.jpg')),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 25,
                  ),
                  Text(
                    'Hamburger with Extra Cheese ',
                    style: TextStyle(
                      fontSize: 20.0,

                      ///   fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 215.0),
                    child: Text('\u{20A6} 2,500'),
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 125.0,
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  padding: EdgeInsets.only(top: 28.0),
                  child: Column(
                    children: [
                      Image.asset(
                        'images/ham1.jpg',
                        width: 90.0,
                      ),
                      Text('Fries Burger'),
                    ],
                  ),
                ),
                Container(
                  //   height: 60.0,
                  //    color: Colors.red,
                  child: Image.asset(
                    'images/ham2.jpg',
                    width: 140.0,
                    //height: 140,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 28.0),
                  //   color: Colors.blue,
                  child: Column(
                    children: [
                      Image.asset(
                        'images/ham1.jpg',
                        width: 90.0,
                      ),
                      Text('Plain Burger'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50.0,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 68.0),
            child: Text(
              'Ingredients: Buns, Tomatoes, Lettuce,',
              style: TextStyle(
                  fontSize: 16.0,
                  //fontWeight: FontWeight.w300,
                  color: Colors.black),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 147.0),
            child: Text(
              'Cheese (Extra),Beef,Millet.',
              style: TextStyle(fontSize: 16.0),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 15,
          ),
          Padding(
            padding: const EdgeInsets.all(13.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: FlatButton(
                onPressed: () {
                  // Navigator.push(context, MaterialPageRoute(builder: (context) {
                  //   return HomePage();
                  // }));
                },
                child: Text(
                  "Proceed to Order",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                color: Color(0xffe53120),
                height: 53.0,
                minWidth: 290.0,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
