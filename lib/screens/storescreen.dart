import 'package:flutter/material.dart';

class StoreScreen extends StatefulWidget {
  const StoreScreen({super.key});

  @override
  State<StoreScreen> createState() => _StoreScreen();
}

class _StoreScreen extends State<StoreScreen> {
  List<String> filterOptions = ['New', 'On Sale', 'Demos', 'Action', 'Racing', 'RolePlay'];
  List<bool> selected = List.generate(6, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 4, right: 4),
            child: Card.outlined(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(14.0),
                    child: Image.asset('assets/savings.jpg'),
                  ),
                  const ListTile(
                    title: Text('Save 75% On Games!'),
                    subtitle: Text('Enjoy massive savings on great games.'),
                  ),
                ],
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(left: 16, top:4,right: 16, bottom: 4),
            child: const Row( 
              children: [
                Icon(Icons.merge_type_outlined),
                SizedBox(width: 9),
                Text(
                  'Filter',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left:12, right:12),
            child: const Wrap(
              spacing: 12.0,
              children: <Widget>[
                Chip(label: Text('New')),
                Chip(label: Text('On Sale')),
                Chip(label: Text('Demos')),
                Chip(label: Text('Action')),
                Chip(label: Text('Role-Play')),
                Chip(label: Text('Racing')),
                Chip(label: Text('Strategy')),
                Chip(label: Text('Narrative')),
              ],
            ),
          ),
          const Divider(
            indent: 10,
            endIndent: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left:4.0,right:4.0),
            child: GridView.builder(
              itemCount: 8,
              shrinkWrap: true, 
              physics: const NeverScrollableScrollPhysics(), 
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: .73,
                crossAxisCount: 2,
                mainAxisSpacing: 3.0,
                crossAxisSpacing: 3.0,
              ),
              itemBuilder:(context, index){
                return Card.outlined(
                  child: Column(
                    children: [
                      ClipRRect(
                            borderRadius: BorderRadius.circular(14.0),
                            child: Image.asset('assets/htttlow.jpg'),
                          ),
                        const ListTile(
                          title: Text('PREY'),
                          subtitle: Text('Know Thy Self'),
                        ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    ),
  );
  }
}
