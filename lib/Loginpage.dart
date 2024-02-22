import 'package:flutter/material.dart';

class Newpage extends StatelessWidget {
  const Newpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Colors.tealAccent, Colors.lightBlue.shade400])),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(children: [
            const SizedBox(height: 50),
            const Text("LOGIN",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w800)),
            const SizedBox(height: 10),
            Image.asset(
              "assets/stockslogo.png",
              width: 150,
              height: 150,
            ), //image.assets
            const Text("WELCOME BACK",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600)),
            const SizedBox(height: 6),
            const Text("enter your credentials to log in"),
            const SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    "Email:",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                        labelText: "hello@gmail.com",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ),
                const SizedBox(height: 24),
                const Padding(
                  padding: EdgeInsets.all(18.0),
                  child: Text(
                    "Password:",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "password",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                      suffixIcon: Icon(Icons.visibility_off),
                    ),
                  ),
                ),
              ],
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                    onPressed: () {
                      print("wait a minute....");
                      Navigator.pushNamed(context, "/forgotpass");
                    },
                    child: const Text("forgot password?")),
              ],
            ),
            const SizedBox(height: 12),
            ElevatedButton(
                onPressed: () {
                  print("wait a minute....");
                  Navigator.pushNamed(context, "/User_ListView");
                },
                child: const Text("        LOGIN       ",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 22))),
            const SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("New User?"),
                TextButton(
                    onPressed: () {
                      print("wait a minute....");
                      Navigator.pushNamed(context, "/createaccount");
                    },
                    child: const Text("Create Account")),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
