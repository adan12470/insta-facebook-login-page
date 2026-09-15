import 'package:flutter/material.dart';
import 'package:my_app/newaccount.dart';

class Fblogin extends StatefulWidget {
  const Fblogin({super.key});

  @override
  State<Fblogin> createState() => _FbloginState();
}

class _FbloginState extends State<Fblogin> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10),
                SizedBox(
                  height: 20,
                  width: double.infinity,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.download_rounded, color: Colors.blue),

                      SizedBox(width: 15),
                      Text(
                        "Get Facebook for Android and browser faster",
                        style: TextStyle(color: Colors.blue),
                      ),

                      SizedBox(height: 15),
                    ],
                  ),
                ),
                Row(children: [Expanded(child: Divider())]),

                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "English(UK)",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Image.asset('assets/fbmain.jpeg', height: 100, width: 100),
                SizedBox(height: 50),
                TextField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    hintText: "username,email address or mobile number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    hintText: "password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      String message = "";
                      if (emailcontroller.text.isEmpty &&
                          passwordcontroller.text.isEmpty) {
                        message = "provide require data";
                      } else {
                        message = "Successfully added";
                      }
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(message),
                          backgroundColor: message == 'Successfully added'
                              ? const Color.fromARGB(255, 15, 67, 156)
                              : Colors.cyan,
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),

                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Forgotten Password ?',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 80),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Newaccount()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(20),
                        side: BorderSide(color: Colors.blue),
                      ),
                    ),

                    child: Text(
                      "Create new account",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Image.asset('assets/metaimg.png', height: 36, width: 80),
                SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
