import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'dart:async';

class DAboutTab extends StatelessWidget {
  Future<void> _launchlinkedin() async {
    const url = 'https://www.linkedin.com/in/mouleaswar-shanmugam-747ba11b8/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }

  Future<void> _launchinstagram() async {
    const url = 'https://www.instagram.com/m0u1ea5/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }

  Future<void> _launchgmail() async {
    const url = 'mailto:warmouleas@gmail.com';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Color.fromRGBO(21, 32, 43, 100.0),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(bottom: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('assets/mypic.jpg'),
                ),
                SizedBox(
                  height: 10,
                ),

                //name
                Center(
                  child: Text("Mouleaswar Shanmugam",
                      style: TextStyle(
                          color: Colors.greenAccent,
                          // decoration: TextDecoration.underline,
                          fontSize: 35,
                          fontWeight: FontWeight.bold)),
                ),
                SizedBox(height: 10),

                //college
                Card(
                  elevation: 200,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(10)),
                  color: Colors.black45,
                  child: Center(
                    child: Text(
                      "\nI'm a Mechanical Engineering student in SONA College Of Technology\n",
                      style: TextStyle(
                          color: Colors.yellowAccent,
                          fontSize: 35,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),

                //logo about_me

                //points
                SizedBox(
                  height: 10,
                ),
                Card(
                  elevation: 200,
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.blueGrey),
                      borderRadius: BorderRadius.circular(30)),
                  color: Colors.black45,
                  child: Center(
                    child: Text(
                      "\n✨ Competitive programmer at Codechef,Codeforces,Atcoder etc..  \n\n✨ Hattrick winner in Intra college coding competitions."
                      "\n\n✨ Achieved 3rd in National level 2D Animation Hackathon. \n\n✨ Winner in Inter college coding competition twice. \n\n"
                      "✨ Learning Flutter SDK and DSAlgo. \n",
                      style: TextStyle(fontSize: 30),
                    ),
                  ),
                ),

                //Contact
                Divider(
                  height: 20,
                  thickness: 3,
                  color: Colors.black,
                ),
                SizedBox(height: 5),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    child: Text(
                      "CONTACT INFO 👨‍‍",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.white),
                    ),
                  ),
                ),

                //contact info
                Row(
                  children: [
                    SizedBox(width: 350),
                    TextButton(
                      onPressed: _launchlinkedin,
                      child: Container(
                        child: Image.asset(
                          'assets/linkedinlogo.png',
                          width: 200,
                          height: 200,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    TextButton(
                      onPressed: _launchinstagram,
                      child: Container(
                        child: Image.asset(
                          'assets/instagramlogo.jpg',
                          width: 200,
                          height: 200,
                        ),
                      ),
                    ),
                    SizedBox(width: 10),
                    TextButton(
                      onPressed: _launchgmail,
                      child: Container(
                        child: Image.asset(
                          'assets/gmaillogo.jpg',
                          width: 200,
                          height: 200,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
