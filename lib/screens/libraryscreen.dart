import 'package:flutter/material.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() {
    return _LibraryScreen();
  }
}

enum LibOptions { installed, purchased}

class _LibraryScreen extends State<LibraryScreen> {
  LibOptions libView = LibOptions.installed;

  @override
  Widget build(BuildContext context) {
    return 
     DefaultTabController(
      initialIndex: 0,
      length: 2,
       child: Scaffold(
        appBar: AppBar(
        flexibleSpace: const Column(
            children: [
              Expanded(
                child: TabBar(
                      tabs: <Widget>[
                        Tab(
                          //text: 'Installed',
                          icon: Icon(Icons.download_for_offline_outlined),
                        ),
                        Tab(
                          //text: 'Purchased',
                          icon: Icon(Icons.storefront_sharp),
                        ),
                      ],
                    ),
              ),
            ],
          ),
        ),
        body: TabBarView(children: <Widget>[
          SingleChildScrollView(
          child: 
              Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4.0, top: 4.0, bottom: 4.0),
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
                  itemBuilder: (context, index) {
                    return Card.outlined(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(14.0),
                            child: Image.asset('assets/bendslow.jpg'),
                          ),
                          const ListTile(
                            title: Text('Bends'),
                            subtitle: Text('Radiohead'),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
          ),
          SingleChildScrollView(
          child: 
              Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4.0, top: 4.0, bottom: 4.0),
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
                  itemBuilder: (context, index) {
                    return Card.outlined(
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(14.0),
                            child: Image.asset('assets/htttlow.jpg'),
                          ),
                          const ListTile(
                            title: Text('Hail To The Thief'),
                            subtitle: Text('Radiohead'),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
          ),
        ],
        )
        ),
     );
  }
}
