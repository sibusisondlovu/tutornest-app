import 'package:flutter/material.dart';

class LibraryScreen extends StatefulWidget {
  const LibraryScreen({Key key}) : super(key: key);

  @override
  _LibraryScreenState createState() => _LibraryScreenState();
}

class _LibraryScreenState extends State<LibraryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _noLibraryItems(context),
    );
  }

  Widget _noLibraryItems(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.45,
        child: Column(
          children: [
            Icon(
              Icons.cancel,
              color: Colors.redAccent,
              size: 70,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'No Libray Items',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'You have not added any library items. \nLibrary items will be shown here',
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      return Colors.cyan; // Use the component's default.
                    },
                  ),
                ),
                child: Text('Search Study Resources')),
            ElevatedButton(
                onPressed: () async {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      return Colors.orangeAccent; // Use the component's default.
                    },
                  ),
                ),
                child: Text('Upload Study Resources')),
          ],
        ),
      ),
    );
  }
}
