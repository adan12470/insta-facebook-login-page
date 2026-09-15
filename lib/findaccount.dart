import 'package:flutter/material.dart';
import 'package:my_app/fblogin.dart';

class Findaccount extends StatefulWidget {
  const Findaccount({super.key});

  @override
  State<Findaccount> createState() => _FindaccountState();
}

class _FindaccountState extends State<Findaccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Find your account", style: TextStyle(fontSize: 30)),
            SizedBox(height: 10),
            Text(
              "Enter your email address or username.\nCan't reset your password?",
            ),
            SizedBox(height: 20),

            TextField(
              decoration: InputDecoration(
                hintText: "Email address or username",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: double.infinity,

              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: Text("Continue", style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                "Find by mobile number",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(child: Divider()),
                SizedBox(width: 10),
                Text("OR", style: TextStyle(fontSize: 20)),
                SizedBox(width: 10),
                Expanded(child: Divider()),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 40,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Fblogin()),
                  );
                },
                // style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Image.asset('assets/facebook.jpeg', height: 20, width: 20),
                    SizedBox(width: 20),
                    Text(
                      "Log in with Facebook",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
