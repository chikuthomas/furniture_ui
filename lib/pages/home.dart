import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>
  with SingleTickerProviderStateMixin {
    late TabController controller;


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = new TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //this helps to avoid text overflow
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey[200],
      body: ListView(
        children: [
          Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 250.0,
                    width: double.infinity,
                    color: Colors.amber[600],
                  ),
                  Positioned(
                    bottom: 50.0,
                    right: 100.0,
                    child: Container(
                      height: 400.0,
                      width: 400.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200.0),
                        color: Colors.amber[400]?.withOpacity(0.4),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 100.0,
                    left: 150.0,
                    child: Container(
                      height: 300.0,
                      width: 300.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(200.0),
                        color: Colors.amber[300]?.withOpacity(0.4),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      SizedBox(height: 15.0),
                      Row(
                        children: [
                          SizedBox(width: 15.0),
                          Container(
                            alignment: Alignment.topLeft,
                            height: 50.0,
                            width: 50.0,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(25.0),
                                border: Border.all(
                                    color: Colors.white,
                                    style: BorderStyle.solid,
                                    width: 2.0),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/img/my_id_photo.jpg'))),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 120.0,
                          ),
                          Container(
                            alignment: Alignment.topRight,
                            child: IconButton(
                              icon: Icon(Icons.menu),
                              onPressed: () {},
                              color: Colors.white,
                              iconSize: 30.0,
                            ),
                          ),
                          SizedBox(
                            height: 15.0,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 15.0,
                        ),
                        child: Text(
                          'Hello , Chiku',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Quicksand',
                              fontSize: 30.0),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 15.0,
                        ),
                        child: Text(
                          'What do you want to buy ?',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Quicksand',
                            fontSize: 23.0,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 55.0,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 15.0, right: 15.0),
                        child: Material(
                          elevation: 5.0,
                          borderRadius: BorderRadius.circular(10.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search,
                                color: Colors.amber,
                                size: 30.0,
                              ),
                              contentPadding:
                                  EdgeInsets.only(left: 10, right: 10),
                              hintText: 'Search',
                              hintStyle: TextStyle(
                                color: Colors.grey.withOpacity(0.5),
                                height: 2.9,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      )
                    ],
                  )
                ],
              ),
              SizedBox(height: 10.0),
              Stack(
                children: [
                  SizedBox(height: 10.0),
                  Material(
                    elevation: 1.0,
                    child: Container(
                      height: 75.0,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 75.0,
                        width: 50.0,
                        child: Column(
                          children: [
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/img/sofas.png'),
                                ),
                              ),
                            ),
                            Text(
                              'Sofas',
                              style: TextStyle(fontFamily: 'Quicksand'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 75.0,
                        width: 60.0,
                        child: Column(
                          children: [
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/img/wardrobe.png'),
                                ),
                              ),
                            ),
                            Text(
                              'Wardrobe',
                              style: TextStyle(fontFamily: 'Quicksand'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 75.0,
                        width: 50.0,
                        child: Column(
                          children: [
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/img/desks.png'),
                                ),
                              ),
                            ),
                            Text(
                              'Desk',
                              style: TextStyle(fontFamily: 'Quicksand'),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 75.0,
                        width: 50.0,
                        child: Column(
                          children: [
                            Container(
                              height: 50.0,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage('assets/img/dressers.png'),
                                ),
                              ),
                            ),
                            Text(
                              'Dresser',
                              style: TextStyle(fontFamily: 'Quicksand'),
                            ),
                          ],
                        ),
                      ),
                    ],
                  )
                ],
              ),
              ItemCard('round couch', 'assets/img/ottoman.jpg', false),
              ItemCard('wardrobe', 'assets/img/chair.jpg', true),
              ItemCard('round couch', 'assets/img/anotherchair.jpg', false),


            ],
          )
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: TabBar(
          controller: controller,
          indicatorColor: Colors.yellow,
          tabs: [
            Tab(icon: Icon(Icons.event_seat, color: Colors.yellow)),
            Tab(icon: Icon(Icons.timer, color: Colors.grey)),
            Tab(icon: Icon(Icons.shopping_cart, color: Colors.grey)),
            Tab(icon: Icon(Icons.person_outline, color: Colors.grey))
          ],
        ),
      ),
    );
  }
}

Widget ItemCard(String title, String imgPath, bool isFavorite) {
  return Padding(
    padding: EdgeInsets.only(left: 15.0, right: 15.0,top:15.0),
    child: Container(
      height: 150.0,
      width: double.infinity,
      color: Colors.white,
      child: Row(
        children: [
          Container(
            width: 140.0,
            height: 150.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(imgPath), fit: BoxFit.contain),
            ),
          ),
          SizedBox(
            width: 4.0,
          ),
          Column(

            children: [

              Row(


                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.bold
                    ),

                  ),
                  SizedBox(
                    width: 10.0,
                  ),

                 // I just added one line
                  Material(

                    elevation: isFavorite ? 0.0 : 2.0,
                    borderRadius: BorderRadius.circular(20.0),
                    child: Container(

                      height: 30.0,
                      width: 30.0,
                      decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(15.0),
                          color: isFavorite ? Colors.grey.withOpacity(0.2) : Colors.white
                      ),
                      child: Center(

                          child: isFavorite ? Icon(
                              Icons.favorite_border
                          ) :Icon(
                              Icons.favorite,
                              color:Colors.red
                          )
                      ),
                    ),
                  )
                ],
              ),

              SizedBox(height: 5.0,
              ),
              Container(
                width: 135.0,
                child: Text(
                  'Apple Color Emoji apmmsmd ksksnsn djksknnks djka aksk',

                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 12.0,
                    color: Colors.grey
                  ),
                ),
              ),
              SizedBox(
                height: 61.0,
              ),
              Row(

                


                children: [

                  Container(
                    height: 30.0,
                    width: 70.0,
                    color: Colors.amber[400],
                    child: Center(
                      child: Text(
                        'MK 123,4000',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontFamily: 'Quicksand',
                          fontWeight: FontWeight.bold,
                          color: Colors.white
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 30.0,
                    width: 70.0,
                    color: Colors.amber[200],
                    child: Center(
                      child: Text(
                        'Add to cart',
                        style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'Quicksand',
                            fontWeight: FontWeight.bold,
                            color: Colors.white
                        ),
                      ),
                    ),
                  )
                ],
              )
            ],
          )
        ],
      ),
    ),

  );
}
