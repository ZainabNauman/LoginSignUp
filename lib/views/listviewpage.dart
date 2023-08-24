import 'package:flutter/material.dart';

import '../widgets/custombutton.dart';

class ListViewPage extends StatelessWidget {
  final String title;
  const ListViewPage({super.key, required this.title});
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
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            index = index + 1;
            return ListTile(
                leading: const Icon(Icons.list),
                trailing: const Text(
                  "GFG",
                  style: TextStyle(color: Colors.green, fontSize: 15),
                ),
                title: Text("List item $index"));
          }),
      // body: ListView.separated(
      //   itemBuilder: (context, position) {
      //     position = position + 1;
      //     return Card(
      //       child: Padding(
      //         padding: const EdgeInsets.all(15.0),
      //         child: Text(
      //           'List Item $position',
      //         ),
      //       ),
      //     );
      //   },
      //   separatorBuilder: (context, position) {
      //     return const Card(
      //       color: Colors.grey,
      //       child: Padding(
      //         padding: EdgeInsets.all(5.0),
      //         child: Text(
      //           '  ',
      //           style: TextStyle(color: Colors.white),
      //         ),
      //       ),
      //     );
      //   },
      //   itemCount: 20,
      // ),
    );
  }
}
