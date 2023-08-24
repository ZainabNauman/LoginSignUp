import 'package:flutter/material.dart';
import 'package:flutter_project1/views/listviewpage.dart';

import '../widgets/custombutton.dart';

class HomePage extends StatelessWidget {
  final String title;
  HomePage({super.key, required this.title});
  //String line = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: Text(
            title,
          ),
          centerTitle: true,
          backgroundColor: Colors.brown,
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 50,
              color: Colors.amber[900],
              child: const Center(child: Text('Entry A')),
            ),
            Container(
              height: 50,
              color: Colors.amber[800],
              child: const Center(child: Text('Entry B')),
            ),
            Container(
              height: 50,
              color: Colors.amber[700],
              child: const Center(child: Text('Entry C')),
            ),
            Container(
              height: 50,
              color: Colors.amber[600],
              child: const Center(child: Text('Entry D')),
            ),
            Container(
              height: 50,
              color: Colors.amber[500],
              child: const Center(child: Text('Entry E')),
            ),
            Container(
              height: 50,
              color: Colors.amber[400],
              child: const Center(child: Text('Entry F')),
            ),
            Container(
              height: 50,
              color: Colors.amber[300],
              child: const Center(child: Text('Entry G')),
            ),
            Container(
              height: 50,
              color: Colors.amber[200],
              child: const Center(child: Text('Entry H')),
            ),
            Container(
              height: 50,
              color: Colors.amber[100],
              child: const Center(child: Text('Entry I')),
            ),
            Container(
              height: 50,
              color: Colors.amber[50],
              child: const Center(child: Text('Entry J')),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(100, 5, 100, 5),
              child: CustomButton(
                  color: Colors.grey,
                  text: 'NextPage',
                  width: 100,
                  onTap: () {
                    nextpagebutton(context);
                  }),
            ),

            // CustomButton(
            //     color: Colors.pinkAccent,
            //     width: 50,
            //     text: 'NextPage',
            //     onTap: () {
            //       nextpagebutton(context);
            //     }),
            // Container(
            //   height: 50,
            //   color: Colors.amber[50],
            //   child: const Column(
            //       crossAxisAlignment: CrossAxisAlignment.center,
            //       mainAxisAlignment: MainAxisAlignment.center,
            //       children: [
            //         //SizedBox(height: 15),
            //         Text(
            //           'Entry C',
            //           textAlign: TextAlign.center,
            //         ),
            //       ]),
            // ),
          ],
        ));
  }

  void nextpagebutton(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const ListViewPage(title: 'Hello')),
    );
  }
}
