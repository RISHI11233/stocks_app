import 'package:flutter/material.dart';

class Secondscreen extends StatefulWidget {
  const Secondscreen({super.key});

  @override
  State<Secondscreen> createState() => _SecondscreenState();
}

class _SecondscreenState extends State<Secondscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            "STOCK streak",
            style: TextStyle(fontWeight: FontWeight.w800),
          ),
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            Image.asset("assets/load.jpg"),
            TextButton(
                style: ButtonStyle(
                    iconColor: MaterialStatePropertyAll(Colors.blueAccent)),
                onPressed: () {
                  print("wait a minute....");
                  Navigator.popAndPushNamed(context, "/newpage");
                },
                child: Text(
                  "+",
                  style: TextStyle(fontSize: 32),
                )),
          ],
        ),
      ),
    );
  }
}
