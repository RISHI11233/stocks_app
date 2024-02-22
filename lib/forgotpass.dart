import 'package:flutter/material.dart';

class Forgotpass extends StatefulWidget {
  const Forgotpass({super.key});

  @override
  State<Forgotpass> createState() => _ForgotpassState();
}

class _ForgotpassState extends State<Forgotpass> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [Colors.tealAccent, Colors.lightBlue.shade400])),
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            SizedBox(height: 100),
            const Text("RESET YOUR PASSWORD",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w800)),
            SizedBox(height: 100),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "enter new passsword :",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "re-enter new passsword :",
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20))),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
                onPressed: () {
                  print("wait a minute....");
                  Navigator.pushNamed(context, "/routename");
                },
                child: Text("Reset Password",
                    style:
                        TextStyle(fontWeight: FontWeight.w700, fontSize: 16))),
          ],
        ),
      ),
    );
  }
}
