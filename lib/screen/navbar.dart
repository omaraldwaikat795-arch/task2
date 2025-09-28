import 'package:flutter/material.dart';
import 'package:instagram_ui/screen/instgram.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int _selectedIndex = 0;
  List<Widget> create = [
    Instgram(),
    Text("searsh"),
    Text("box"),
    Text("favorite"),
    Text("person"),
  ];

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
     // appBar: AppBar(
      //  title: Text("intsa"),
        //centerTitle: true,
        //backgroundColor: Colors.green,
     // ),
      body:  create[_selectedIndex],
      //bottomNavigationBar: BottomNavigationBar(
       //onTap: ,
       //  backgroundColor: Colors.green,
       //   selectedItemColor: Colors.blue,
         //selectedLabelStyle: TextStyle(fontWeight: FontWeight.w700),
       //currentIndex: _selectedIndex,
        //  onTap: (index) {
            //setState(() {
            //  _selectedIndex = index;
            //},
         //},
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'searsh'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'box'),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'favorite',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'person'),
        ],
      ),


    );
  }
}
