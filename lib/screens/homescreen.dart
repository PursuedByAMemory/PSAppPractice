import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget{
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState(){
    return _HomeScreen();
  } 
}

class _HomeScreen extends State<HomeScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left: 4, right: 4),
              child: Card.outlined(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(14.0),
                      child: Image.asset('assets/nfs.jpg'),
                    ),
                    const ListTile(
                      title: Text('Need For Speed: Unbound'),
                      subtitle: Text('Race To The Top'),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4, right: 4),
              child: Card.outlined(
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(14.0),
                      child: Image.asset('assets/sifu.jpg'),
                    ),
                    const ListTile(
                      title: Text('SIFU'),
                      subtitle: Text('Do you know Kung Fu?'),
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4, right: 4),
              child: Card.outlined(
                child: Column(
                  children: [
                    ClipRRect(
              
                      borderRadius: BorderRadius.circular(14.0),
                      child: Image.asset('assets/mm2.jpg'),
                    ),
                    const ListTile(
                      title: Text('Spider-Man: Miles Morales'),
                      subtitle: Text('The friendly neighbourhood Spider-Man'),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      )
    );
  }
}