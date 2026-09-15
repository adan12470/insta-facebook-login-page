import 'package:flutter/material.dart';
import 'package:my_app/lastride.dart';

class Newaccount extends StatefulWidget {
  const Newaccount({super.key});

  @override
  State<Newaccount> createState() => _NewaccountState();
}

class _NewaccountState extends State<Newaccount> {
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
              "Find your account",
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text("Enter your mobile number."),
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
            SizedBox(
              height: 50,
              width: double.infinity,

              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Lastride()),
                  );
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: Text("Continue", style: TextStyle(color: Colors.white)),
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Text(
                "Search by email address",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
