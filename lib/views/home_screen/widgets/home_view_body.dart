import 'package:flutter/material.dart';
import 'package:news/views/Business_screen/business_view.dart';
import 'package:news/views/science_screen/science_view.dart';
import 'package:news/views/sports_screen/sports_view.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({Key? key}) : super(key: key);

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  static int selectedItem = 0;
  static List<Widget> layOut = <Widget>[

   const  ScienceView(),
    const BusinessView(),
    const SportsView()
  ];
   void onItemTapped(int index){
    setState((){
      selectedItem=index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: layOut.elementAt(selectedItem),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text('News app',
        style: TextStyle(
          color: Colors.black
        ),),
        elevation: 0,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: 'Business'),
          BottomNavigationBarItem(
              icon: Icon(Icons.science_outlined), label: 'Science'),
          BottomNavigationBarItem(
              icon: Icon(Icons.sports_soccer), label: 'Sports'),
        ],
        currentIndex: selectedItem,
        selectedItemColor: Colors.black,
        onTap: onItemTapped,
      ),
    );
  }
}
