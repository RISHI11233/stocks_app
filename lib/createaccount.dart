import 'package:flutter/material.dart';

class Createaccount extends StatelessWidget {
  const Createaccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Colors.tealAccent, Colors.lightBlue.shade400])),
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          SizedBox(height: 40),
          const Text("CREATE YOUR ACCOUNT",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("User Name",
                    style: TextStyle(fontWeight: FontWeight.w700)),
                SizedBox(height: 20),
                TextFormField(
                    decoration: InputDecoration(
                        labelText: "ABc123",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)))),
                SizedBox(height: 20),
                Text("Email Adress",
                    style: TextStyle(fontWeight: FontWeight.w700)),
                SizedBox(height: 20),
                TextFormField(
                    decoration: InputDecoration(
                        labelText: "hello@gmail.com",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)))),
                SizedBox(height: 20),
                Text("Password", style: TextStyle(fontWeight: FontWeight.w700)),
                SizedBox(height: 20),
                TextFormField(
                    decoration: InputDecoration(
                        labelText: "password",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20)))),
              ],
            ),
          ),
          SizedBox(height: 40),
          TextButton(onPressed: () {}, child: Text("Create your Account")),
          SizedBox(height: 20),
          TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, "/newpage");
              },
              child: Text("Log in"))
        ]),
      ),
    );
  }
}
