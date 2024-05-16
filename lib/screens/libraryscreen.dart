import 'package:flutter/material.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({super.key});

  @override
  State<LibraryScreen> createState() {
    return _LibraryScreen();
  }
}

enum LibOptions { installed, purchased }

class _LibraryScreen extends State<LibraryScreen> {
  LibOptions libView = LibOptions.installed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 14, top: 6, right: 10, bottom: 5),
              child: SegmentedButton<LibOptions>(
                segments: const <ButtonSegment<LibOptions>>[
                  ButtonSegment<LibOptions>(
                    value: LibOptions.installed,
                    label: Text('Installed'),
                    icon: Icon(Icons.download_for_offline_outlined),
                  ),
                  ButtonSegment<LibOptions>(
                    value: LibOptions.purchased,
                    label: Text('Purchased'),
                    icon: Icon(Icons.account_balance_wallet_outlined),
                  ),
                ],
                selected: <LibOptions>{libView},
                onSelectionChanged: (Set<LibOptions> newSelection) {
                  setState(() {
                    libView = newSelection.first;
                  });
                },
              ),
            ),
            const Divider(
              indent: 10,
              endIndent: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 4.0, right: 4.0),
              child: GridView.builder(
                itemCount: 8,
                shrinkWrap: true, 
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 3.0,
                  crossAxisSpacing: 3.0,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(14.0),
                          child: Image.asset('assets/prey.jpg'),
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
