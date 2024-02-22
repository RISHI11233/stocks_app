import 'package:flutter/material.dart';

class Users_ListView extends StatefulWidget {
  const Users_ListView({super.key});

  @override
  State<Users_ListView> createState() => _Users_ListViewState();
}

class _Users_ListViewState extends State<Users_ListView> {
  List<String> users = [
    "STOCK 1    Rs:10 k",
    "STOCK 2    Rs:138 k",
    "STOCK 3    Rs:100 k",
    "STOCK 4    Rs:152 k",
    "STOCK 5    Rs:69 k",
    "STOCK 6    Rs:38 k",
    "STOCK 7    Rs33 k",
    "STOCK 8    Rs:55 k",
    "STOCK 9    Rs:29 k",
    "STOCK 10    Rs:15 k"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        backgroundColor: Colors.tealAccent,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.black,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Colors.tealAccent, Colors.lightBlue.shade400])),
        child: ListView.builder(
            itemCount: users.length,
            itemBuilder: (context, index) {
              final names = users[index];
              return Padding(
                  padding: const EdgeInsets.all(18),
                  child: Card(
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 72, 243, 255),
                        child: Text(
                          "SS",
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 65, 65),
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                      title: Text(names),
                      subtitle: Text(" BUY....",
                          style: TextStyle(
                              fontWeight: FontWeight.w700,
                              backgroundColor:
                                  const Color.fromARGB(255, 76, 255, 213))),
                    ),
                  ));
            }),
      ),
    );
  }
}
