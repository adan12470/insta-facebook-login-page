import 'package:flutter/material.dart';
import 'package:my_app/findaccount.dart';

class Appbar extends StatefulWidget {
  const Appbar({super.key});

  @override
  State<Appbar> createState() => _AppbarState();
}

class _AppbarState extends State<Appbar> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          "Insta Login Page",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search_off,
            color: const Color.fromRGBO(12, 12, 12, 1),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.menu_book_outlined,
              color: const Color.fromARGB(255, 26, 24, 24),
            ),
          ),
        ],
        shape: BeveledRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(20),
        ),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
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
                    IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.keyboard_arrow_down),
                    ),
                  ],
                ),
                SizedBox(height: 40),
                Image.asset('assets/imagefile.jpeg', height: 100, width: 100),
                SizedBox(height: 50),
                TextField(
                  controller: emailcontroller,
                  decoration: InputDecoration(
                    hintText: "Username,email address or mobile number",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                TextField(
                  controller: passwordcontroller,
                  decoration: InputDecoration(
                    hintText: "Password",
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
                              ? Colors.blue
                              : Colors.blueAccent,
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),

                    child: Text(
                      'Log In',
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Findaccount()),
                    );
                  },
                  child: Text(
                    'Forgotten Password ?',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                SizedBox(height: 210),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
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
                SizedBox(height: 20),
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
