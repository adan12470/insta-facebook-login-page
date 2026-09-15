import 'package:flutter/material.dart';
import 'package:my_app/appbar.dart';

class Lastride extends StatefulWidget {
  const Lastride({super.key});

  @override
  State<Lastride> createState() => _LastrideState();
}

class _LastrideState extends State<Lastride> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What's your mobile number?",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(
              "Enter the mobile number on which you can be\ncontacted.No one will see on which your profile.",
            ),
            SizedBox(height: 20),

            TextField(
              textAlignVertical: TextAlignVertical.top,
              decoration: InputDecoration(
                hintText: "Mobile number",

                contentPadding: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 10,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),

            SizedBox(height: 20),
            RichText(
              text: TextSpan(
                text:
                    'You may receive Whatsapp and SMS notifications from\n us.',
                style: TextStyle(color: Colors.black),
                children: [
                  TextSpan(
                    text: "Learn More",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: double.infinity,

              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Appbar()),
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: Text("Next", style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Sign up with email address",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 180),
            Center(
              child: Text(
                "I already have an account",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
