import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

// https://www.codechef.com/users/mouleas14/
// https://codeforces.com/profile/M0u1ea5/
// https://leetcode.com/M0u1ea5/
// https://www.hackerrank.com/heshma27/
// https://atcoder.jp/users/M0u1ea5/

class DProfilesTab extends StatelessWidget {
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
                height: 20,
              ),
              Text(
                "Competitive Programming Profiles",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 300,
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
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 30,
                thickness: 3,
                color: Colors.black45,
              ),
              Row(
                children: [
                  VerticalDivider(
                    width: 280,
                  ),
                  Text(
                    "Languages Known",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                  VerticalDivider(
                    width: 280,
                    thickness: 3,
                    color: Colors.black45,
                  ),
                  Text(
                    "Tools and Programming Languages Known",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  VerticalDivider(
                    width: 150,
                  ),
                  Column(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/Language.png',
                          width: 500,
                        ),
                      ),
                    ],
                  ),
                  VerticalDivider(
                    width: 150,
                    thickness: 3,
                    color: Colors.black45,
                  ),
                  Container(
                    child: Image.asset(
                      'assets/Tools/tools.png',
                      width: 420,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
