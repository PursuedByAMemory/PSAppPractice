import 'package:flutter/material.dart';
class SearchScreen extends StatefulWidget{
  const SearchScreen({super.key});
  @override
  State<SearchScreen> createState(){
    return _SearchScreen();
  } 
}

class _SearchScreen extends State<SearchScreen>{
  @override
  Widget build(BuildContext context){
    return const Center(child: Text('Search'));
  }
}