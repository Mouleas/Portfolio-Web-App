import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// https://www.codechef.com/users/mouleas14/
// https://codeforces.com/profile/M0u1ea5/
// https://leetcode.com/M0u1ea5/
// https://www.hackerrank.com/heshma27/
// https://atcoder.jp/users/M0u1ea5/

class MProfilesTab extends StatelessWidget {
  Future<void> _launchcodechef() async {
    const url = 'https://www.codechef.com/users/mouleas14/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }

  Future<void> _launchcodeforces() async {
    const url = 'https://codeforces.com/profile/M0u1ea5/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }

  Future<void> _launchleetcode() async {
    const url = 'https://leetcode.com/M0u1ea5/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }

  Future<void> _launchatcoder() async {
    const url = 'https://atcoder.jp/users/M0u1ea5/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }

  Future<void> _launchhackkerank() async {
    const url = 'https://www.hackerrank.com/heshma27/';
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
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 5,
              ),
              Center(
                child: Text(
                  "Competitive Programming Profiles",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 12,
                  ),
                  // codechef
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    color: Colors.white,
                    child: TextButton(
                      onPressed: _launchcodechef,
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset(
                              'assets/codecheflogo.jpg',
                              height: 40,
                              width: 140,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 5,
                  ),

                  // codeforces
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    color: Colors.white,
                    child: TextButton(
                      onPressed: _launchcodeforces,
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset(
                              'assets/codeforceslogo.png',
                              height: 40,
                              width: 140,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 12,
                  ),

                  // leetcode
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    color: Colors.white,
                    child: TextButton(
                      onPressed: _launchleetcode,
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset(
                              'assets/leetcodelogo.png',
                              height: 40,
                              width: 140,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(
                    width: 5,
                  ),

                  // atcoder
                  Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    color: Colors.white,
                    child: TextButton(
                      onPressed: _launchatcoder,
                      child: Column(
                        children: [
                          Container(
                            child: Image.asset(
                              'assets/atcoderlogo.png',
                              height: 40,
                              width: 140,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
                color: Colors.white,
                child: Center(
                  child: TextButton(
                    onPressed: _launchhackkerank,
                    child: Column(
                      children: [
                        Container(
                          child: Image.asset(
                            'assets/HackerRankLogo.png',
                            height: 40,
                            width: 140,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(
                height: 30,
                thickness: 3,
                color: Colors.black45,
              ),
              Center(
                child: Text(
                  "Language Proficiency",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  SizedBox(width: 20),
                  Container(
                    child: Image.asset(
                      'assets/Language.png',
                      width: 350,
                    ),
                  ),
                ],
              ),
              Divider(
                height: 30,
                thickness: 3,
                color: Colors.black45,
              ),
              Center(
                  child: Text(
                "Tools & Programming Languages\n                        Known",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              )),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(width: 5),
                  Container(
                    child: Image.asset(
                      'assets/Tools/tools.png',
                      width: 350,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
