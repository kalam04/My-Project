import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flip_box_bar/flip_box_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'mainDrawer.dart';



void main() {
  // debugPaintSizeEnabled = true;
  runApp(splash());
}

class splash extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Image.asset("assets/images/cn.png"),
        nextScreen: MyApp(),
        duration: 1,
      ),
    );
  }

}

class MyApp extends StatelessWidget {
  int currentIndex1=0;

  @override
  Widget build(BuildContext context) {
        Color color = Theme.of(context).primaryColor;


        Widget gridSection = Container(
          child: GridView.count(
            shrinkWrap: true,
            primary: false,
            crossAxisCount: 3,
            children: <Widget>[
              new Container(
                child: new Card(
                  child: new InkResponse(
                    child: new Column(

                      children: <Widget>[
                        new Image.asset('assets/images/livetv.png',height: 100,width: 100,),
                        new SizedBox(height: 5,),
                        new Text('Live Tv', style: TextStyle(fontSize: 18),)
                      ],
                    ),
                    onTap: (){
                      debugPrint('work');
                    },
                  ),
                ),
              ),
              new Container(
                child: new Card(
                  child: new InkResponse(
                    child: new Column(
                      children: <Widget>[
                        new Image.asset('assets/images/ftpserver.png',height: 100,width: 100,),
                        new SizedBox(height: 5,),
                        new Text('FTP Server',style: TextStyle(fontSize: 18),)

                      ],
                    ),
                    onTap: (){
                      debugPrint('work ftp');
                    },
                  )
                ),
              ),
              new Container(
                child: new Card(
                  child: new InkResponse(
                    child: new Column(
                      children: <Widget>[
                        new Image.asset('assets/images/movie.png',height: 100,width: 100,),
                        new SizedBox(height: 5,),
                        new Text('Movies',style: TextStyle(fontSize: 18),),

                      ],
                    ),
                    onTap: (){
                      debugPrint('work movies');
                    },
                  ),
                ),
              ),
              new Container(
                child: new Card(
                  child: InkResponse(
                    child: Column(
                      children: [
                        new Image.asset('assets/images/cash.png',height: 100,width: 100,),
                        new SizedBox(height: 5,),
                        new Text('Cash Payment',style: TextStyle(fontSize: 18),),
                      ],
                    ),
                    onTap: (){
                      debugPrint('work Cash payment');
                    },
                  ),
                ),
              ),
              new Container(
                child: new Card(
                  child: InkResponse(
                    child: Column(
                      children: [
                        new Image.asset('assets/images/mb.png',height: 100,width: 100,),
                        new SizedBox(height: 5,),
                        new Text('Mobile banking',style: TextStyle(fontSize: 18),),
                      ],
                    ),
                    onTap: (){
                      debugPrint('Mobile banking');
                    },
                  ),
                ),
              ),
              new Container(
                child: new Card(
                  child: InkResponse(
                    child: Column(
                      children: [
                        new Image.asset('assets/images/bksh.png',height: 100,width: 100,),
                        new SizedBox(height: 5,),
                        new Text('Bkash Payment',style: TextStyle(fontSize: 18),),
                      ],
                    ),
                    onTap: (){
                      debugPrint('Bkash Payment');
                    },
                  ),
                ),
              ),
              new Container(
                child: new Card(
                  child: InkResponse(
                    child: Column(
                      children: [
                        new Image.asset('assets/images/help.png',height: 100,width: 100,),
                        new SizedBox(height: 5,),
                        new Text('Help Line',style: TextStyle(fontSize: 18),),
                      ],
                    ),
                    onTap: (){
                      debugPrint('Help Line');
                    },
                  ),
                ),
              ),
              new Container(
                child: new Card(
                  child: InkResponse(
                    child: Column(
                      children: [
                        new Image.asset('assets/images/support.png',height: 100,width: 100,),
                        new SizedBox(height: 5,),
                        new Text('Support',style: TextStyle(fontSize: 18),),
                      ],
                    ),
                    onTap: (){
                      debugPrint('Support');
                    },
                  ),
                ),
              ),
              new Container(
                child: new Card(
                  child: InkResponse(
                    child: Column(
                      children: [
                        new Image.asset('assets/images/partner.png',height: 100,width: 100,),
                        new SizedBox(height: 5,),
                        new Text('Website',style: TextStyle(fontSize: 18),),
                      ],
                    ),
                    onTap: (){
                      debugPrint('Website');
                    },
                  ),
                ),
              ),

            ],
          ),
        );

    int selectedIndex;
    return MaterialApp(
      title: 'Circle Network',
      home: Scaffold(



        appBar: AppBar(
          title: Text('Circle Network'),
        ),
        drawer: mainDrawer(),
        body: ListView(
          children: [
            Image.asset(
              'assets/images/cn4.png',
              width: 600,
              height: 160,
              fit: BoxFit.cover,
            ),
            // textSection,
            gridSection,
          ],
        ),
        bottomNavigationBar: FlipBoxBar(

          selectedIndex: currentIndex1,
          items: [
            FlipBarItem(icon: Icon(Icons.map,), text: Text("Map"), frontColor: Colors.blue, backColor: Colors.blueAccent),
            FlipBarItem(icon: Icon(Icons.add), text: Text("Add"), frontColor: Colors.cyan, backColor: Colors.cyanAccent),
            FlipBarItem(icon: Icon(Icons.chrome_reader_mode), text: Text("Read"), frontColor: Colors.orange, backColor: Colors.orangeAccent),
            FlipBarItem(icon: Icon(Icons.print), text: Text("Print"), frontColor: Colors.purple, backColor: Colors.purpleAccent),
            FlipBarItem(icon: Icon(Icons.print), text: Text("Print"), frontColor: Colors.pink, backColor: Colors.pinkAccent),
          ],
          onIndexChanged: (newIndex) {
            setState() {
              selectedIndex = newIndex;
            }
          },
        ),


      ),

    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        Container(
          margin: const EdgeInsets.only(top: 8),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        ),
      ],
    );
  }

  // Widget buttonSection = Container(
  //   child: Row(
  //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //     children: [
  //       _buildButtonColumn(color, Icons.call, 'CALL'),
  //       _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
  //       _buildButtonColumn(color, Icons.share, 'SHARE'),
  //     ],
  //   ),
  // );

  // Widget titleSection = Container(
  //   padding: const EdgeInsets.all(32),
  //   child: Row(
  //     children: [
  //       Expanded(
  //         /*1*/
  //         child: Column(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           children: [
  //             /*2*/
  //             Container(
  //               padding: const EdgeInsets.only(bottom: 8),
  //               child: Text(
  //                 'Oeschinen Lake Campground',
  //                 style: TextStyle(
  //                   fontWeight: FontWeight.bold,
  //                 ),
  //               ),
  //             ),
  //             Text(
  //               'Kandersteg, Switzerland',
  //               style: TextStyle(
  //                 color: Colors.grey[500],
  //               ),
  //             ),
  //           ],
  //         ),
  //       ),
  //       /*3*/
  //       Icon(
  //         Icons.star,
  //         color: Colors.red[500],
  //       ),
  //       Text('41'),
  //     ],
  //   ),
  // );
  //
  // Widget textSection = Container(
  //   padding: const EdgeInsets.all(32),
  //   child: Text(
  //     'Circle Network (CN) is one of the leading Nationwide ISP in Bangladesh.'
  //         ' Circle Network providing best quality Bandwidth in all over the '
  //         'country with prosper and goodwill. There are 37 District and 250 ',
  //     // 'Upozila in our Coverage area. We have GGC server, Facebook server '
  //     // 'and much more useful content with Bangladesh Largest FTP server '
  //     // 'with huge content including IP Tv for customer satisfaction. Our '
  //     // 'highly qualified experience and hardworking largest support team '
  //     // 'working for marvelous support and showing their dedication to work.'
  //     // ' So you are also invited to our circle family to be the honorable '
  //     // 'and pioneer client of Circle Network. Circle Network (CNL) over the'
  //     // ' last decade has consistently provided its customers with state of'
  //     // ' the art IT communication solutions. Our clients have been able to'
  //     // ' rely on our ability to provide stable and consistent connectivity'
  //     // ' solutions. Using the state of the art backbone and infrastructure,'
  //     // ' we have ensured that our clients have had minimal worry when it '
  //     // 'comes to dependability of their IT Communication. That in turn has'
  //     // ' ensured us an enviable list of blue-chip customers. When Internet'
  //     // ' and related value added services are critical input to business,',
  //     // ' Corporate Bangladesh has but only one obvious choice- Circle '
  //     // 'Network. Circle Network (CNL) employs more than 200 employees '
  //     // 'with diverse skill sets and expertise. Through years of experience '
  //     // '(CN) is able to accurately assess constantly changing customer'
  //     // ' requirements, offering the most extensive and affordable IT'
  //     // ' services available. Circle Network (CNL) places due importance on'
  //     // ' quickly adopting new technology by investing 40% of its budget for'
  //     // ' R&D. The company also strives to maintain international standard'
  //     // ' products and services. The Circle Network (CNL) has diversified'
  //     // ' investment in ICT & Multi Business Lifestyle sectors in Bangladesh.'
  //     // ' Circle Network (CNL) starting in 2013.This group presently '
  //     // 'has over 200 employees.',
  //     softWrap: true,
  //   ),
  // );

}

