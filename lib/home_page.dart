import 'package:flutter/material.dart';

import 'order.dart';

class HomePage extends StatelessWidget {
  //const HomePage({ Key? key }) : super//(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      body: Container(
        width: double.infinity,
        color: Color(0xfff5f5f5),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              Text(
                'Hello,',
                style: TextStyle(
                  fontSize: 20.0,

                  ///   fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 18.0),
                child: Text(
                  'Joy',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 10,
              ),
              Text(
                'Welcome, what would you like ',
                style: TextStyle(fontSize: 20.0),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 208.0),
                child: Text(
                  'to eat?',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Order();
                        }));
                      },
                      child: Hero(
                        tag: 'hero',
                        child: ContainerCard(
                          image: 'images/ham1.jpg',
                          snackName: 'Burger',
                          width: 130.0,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: ContainerCard(
                      image: 'images/pizza.png',
                      snackName: 'Pizza',
                      width: 110.0,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15.0,
              ),
              Row(
                children: [
                  Expanded(
                    child: ContainerCard1(
                      image: 'images/shawarma.jpg',
                      snackName: 'Shawarma',
                      width: 130.0,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Expanded(
                    child: ContainerCard2(
                      image: 'images/hotdog.png',
                      snackName: 'Hot dog',
                      width: 130.0,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ContainerCard extends StatelessWidget {
  final image, snackName, width;
  //const ContainerCard({ Key? key }) : super(key: key);
  ContainerCard({this.image, this.snackName, this.width});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 160,
        //width: 120,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: width,
            ),
            SizedBox(
              height: 19.0,
            ),
            Text(snackName,
                style: TextStyle(color: Color(0xffc31220), fontSize: 15.0)),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}

class ContainerCard1 extends StatelessWidget {
  final image, snackName, width;
  //const ContainerCard({ Key? key }) : super(key: key);
  ContainerCard1({this.image, this.snackName, this.width});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        height: 160,
        //width: 120,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: width,
            ),
            SizedBox(
              height: 32.0,
            ),
            Text(snackName,
                style: TextStyle(color: Color(0xffc31220), fontSize: 15.0)),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}

class ContainerCard2 extends StatelessWidget {
  final image, snackName, width;
  //const ContainerCard({ Key? key }) : super(key: key);
  ContainerCard2({this.image, this.snackName, this.width});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 160,
        //width: 120,

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              image,
              width: width,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(snackName,
                style: TextStyle(color: Color(0xffc31220), fontSize: 15.0)),
            SizedBox(
              height: 2.0,
            ),
          ],
        ),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(10.0)),
      ),
    );
  }
}
