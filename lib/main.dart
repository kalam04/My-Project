import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flip_box_bar/flip_box_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'bkashPayment.dart';
import 'help.dart';
import 'mainDrawer.dart';
import 'home.dart';
import 'package.dart';



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
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: MybottomnavigationBar(),
    );
  }
}

class MybottomnavigationBar extends StatefulWidget {
  @override
  _MybottomnavigationBarState createState() => _MybottomnavigationBarState();
}



class _MybottomnavigationBarState extends State<MybottomnavigationBar> {
  int _currentIndex=0;
  final List<Widget> _children =[
    Home(),
    Help(),
    package(),
    bkashPayment(),
  ];
  void onTabBar(int index){
    setState(() {
      _currentIndex=index;
    });

  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: Scaffold(
        body: _children[_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: onTabBar,
          items: [
            BottomNavigationBarItem(icon: new Icon(Icons.home), title: Text('Home'), backgroundColor: Colors.amberAccent,),
            BottomNavigationBarItem(icon: new Icon(Icons.contacts), title: Text('Contacts'),backgroundColor: Colors.blueAccent),
            BottomNavigationBarItem(icon: Icon(Icons.camera),title: Text('Package')),
            BottomNavigationBarItem(icon: Icon(Icons.payment),title: Text('Payment')),

          ],
        ),
      ),

    );
  }
}




//
// class MyApp1 extends StatelessWidget {
//   int currentIndex1=0;
//
//   @override
//   Widget build(BuildContext context) {
//         Color color = Theme.of(context).primaryColor;
//
//         Widget gridSection = Container(
//           child: GridView.count(
//             shrinkWrap: true,
//             primary: false,
//             crossAxisCount: 3,
//             children: <Widget>[
//               new Container(
//                 child: new Card(
//                   child: new InkResponse(
//                     child: new Column(
//
//                       children: <Widget>[
//                         new Image.asset('assets/images/livetv.png',height: 100,width: 100,),
//                         new SizedBox(height: 5,),
//                         new Text('Live Tv', style: TextStyle(fontSize: 18),)
//                       ],
//                     ),
//                     onTap: (){
//                       debugPrint('work');
//                     },
//                   ),
//                 ),
//               ),
//               new Container(
//                 child: new Card(
//                   child: new InkResponse(
//                     child: new Column(
//                       children: <Widget>[
//                         new Image.asset('assets/images/ftpserver.png',height: 100,width: 100,),
//                         new SizedBox(height: 5,),
//                         new Text('FTP Server',style: TextStyle(fontSize: 18),)
//
//                       ],
//                     ),
//                     onTap: (){
//                       debugPrint('work ftp');
//                     },
//                   )
//                 ),
//               ),
//               new Container(
//                 child: new Card(
//                   child: new InkResponse(
//                     child: new Column(
//                       children: <Widget>[
//                         new Image.asset('assets/images/movie.png',height: 100,width: 100,),
//                         new SizedBox(height: 5,),
//                         new Text('Movies',style: TextStyle(fontSize: 18),),
//
//                       ],
//                     ),
//                     onTap: (){
//                       debugPrint('work movies');
//                     },
//                   ),
//                 ),
//               ),
//               new Container(
//                 child: new Card(
//                   child: InkResponse(
//                     child: Column(
//                       children: [
//                         new Image.asset('assets/images/cash.png',height: 100,width: 100,),
//                         new SizedBox(height: 5,),
//                         new Text('Cash Payment',style: TextStyle(fontSize: 18),),
//                       ],
//                     ),
//                     onTap: (){
//                       debugPrint('work Cash payment');
//                     },
//                   ),
//                 ),
//               ),
//               new Container(
//                 child: new Card(
//                   child: InkResponse(
//                     child: Column(
//                       children: [
//                         new Image.asset('assets/images/mb.png',height: 100,width: 100,),
//                         new SizedBox(height: 5,),
//                         new Text('Mobile banking',style: TextStyle(fontSize: 18),),
//                       ],
//                     ),
//                     onTap: (){
//                       debugPrint('Mobile banking');
//                     },
//                   ),
//                 ),
//               ),
//               new Container(
//                 child: new Card(
//                   child: InkResponse(
//                     child: Column(
//                       children: [
//                         new Image.asset('assets/images/bksh.png',height: 100,width: 100,),
//                         new SizedBox(height: 5,),
//                         new Text('Bkash Payment',style: TextStyle(fontSize: 18),),
//                       ],
//                     ),
//                     onTap: (){
//                       debugPrint('Bkash Payment');
//                     },
//                   ),
//                 ),
//               ),
//               new Container(
//                 child: new Card(
//                   child: InkResponse(
//                     child: Column(
//                       children: [
//                         new Image.asset('assets/images/help.png',height: 100,width: 100,),
//                         new SizedBox(height: 5,),
//                         new Text('Help Line',style: TextStyle(fontSize: 18),),
//                       ],
//                     ),
//                     onTap: (){
//                       debugPrint('Help Line');
//                     },
//                   ),
//                 ),
//               ),
//               new Container(
//                 child: new Card(
//                   child: InkResponse(
//                     child: Column(
//                       children: [
//                         new Image.asset('assets/images/support.png',height: 100,width: 100,),
//                         new SizedBox(height: 5,),
//                         new Text('Support',style: TextStyle(fontSize: 18),),
//                       ],
//                     ),
//                     onTap: (){
//                       debugPrint('Support');
//                     },
//                   ),
//                 ),
//               ),
//               new Container(
//                 child: new Card(
//                   child: InkResponse(
//                     child: Column(
//                       children: [
//                         new Image.asset('assets/images/partner.png',height: 100,width: 100,),
//                         new SizedBox(height: 5,),
//                         new Text('Website',style: TextStyle(fontSize: 18),),
//                       ],
//                     ),
//                     onTap: (){
//                       debugPrint('Website');
//                     },
//                   ),
//                 ),
//               ),
//
//             ],
//           ),
//         );
//
//     return MaterialApp(
//       title: 'Circle Network',
//       home: Scaffold(
//
//         appBar: AppBar(
//           title: Text('Circle Network'),
//         ),
//         drawer: mainDrawer(),
//         body: ListView(
//           children: [
//             Image.asset(
//               'assets/images/cn4.png',
//               width: 600,
//               height: 160,
//               fit: BoxFit.cover,
//             ),
//             // textSection,
//             gridSection,
//           ],
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           //navBarHeight: 40,
//         backgroundColor: Colors.red,
//
//           items: [
//             BottomNavigationBarItem(icon: Icon(Icons.map,), title: Text("Map"), backgroundColor: Colors.amberAccent ),
//             BottomNavigationBarItem(icon: Icon(Icons.add), title: Text("Add"), ),
//             BottomNavigationBarItem(icon: Icon(Icons.chrome_reader_mode), title: Text("Read"), backgroundColor: Colors.grey),
//             BottomNavigationBarItem(icon: Icon(Icons.print), title: Text("Print"), ),
//
//           ],
//         ),
//
//
//       ),
//
//     );
//   }
//
// }

