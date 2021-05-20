import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DProjectsTab extends StatelessWidget {
  Future<void> _Github() async {
    const url = 'https://github.com/M0u1ea5';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }

  Future<void> _digisig() async {
    const url =
        'https://github.com/M0u1ea5/ReallifeProjects/tree/main/Reallife%20Projects/Digital%20Signature';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }

  Future<void> _voice() async {
    const url =
        'https://github.com/M0u1ea5/ReallifeProjects/tree/main/Reallife%20Projects/Voice%20Assistant';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }

  Future<void> _imgex() async {
    const url =
        'https://github.com/M0u1ea5/ReallifeProjects/tree/main/Reallife%20Projects/Extracting%20Text';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }

  Future<void> _chatroom() async {
    const url =
        'https://github.com/M0u1ea5/ReallifeProjects/tree/main/Reallife%20Projects/GUI-Chat%20Box';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }

  Future<void> _2D() async {
    const url = 'https://github.com/M0u1ea5/Games';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch';
    }
  }

  Future<void> _ytd() async {
    const url = 'https://github.com/M0u1ea5/Youtube_Downloader';
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
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: 750,
                  child: Card(
                      shape: RoundedRectangleBorder(
                          side: BorderSide(color: Colors.blueGrey),
                          borderRadius: BorderRadius.circular(40)),
                      color: Colors.black45,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(
                                top: 40, bottom: 0, left: 10, right: 10),
                            child: Column(
                              children: <Widget>[
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Follow me on GitHub for more projects",
                                  style: TextStyle(fontSize: 15),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                ButtonTheme(
                                  minWidth: 40,
                                  child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.green,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10)),
                                    ),
                                    onPressed: _Github,
                                    child: Text("Follow"),
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                          )
                        ],
                      )),
                ),
                Positioned(
                  top: .0,
                  left: .0,
                  right: .0,
                  child: Center(
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/githublogo.jpg'),
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 1,
              color: Colors.blueGrey,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Projects",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: 800,
              child: Card(
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(40)),
                color: Colors.black45,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/digisig.jpg'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Digital Signature",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: _digisig,
                      child: Text("Open"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "A digital signature is a mathematical technique used to \nvalidate the authenticity and "
                      "integrity of a message or \ndigital document",
                      style: TextStyle(fontSize: 15),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              width: 800,
              child: Card(
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(40)),
                color: Colors.black45,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/imgtxt.jpg'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Extracting Text \n   from Image",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: _imgex,
                      child: Text("Open"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                        "This is a Project which just extracts all the texts \npresent in the image",
                        style: TextStyle(
                          fontSize: 15,
                        )),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              width: 800,
              child: Card(
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(40)),
                color: Colors.black45,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/voiceass.jpg'),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Voice Assistant",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      width: 27,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: _voice,
                      child: Text("Open"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                        "This one is similar to google voice assistant it just recognizes your \ncommmand and react according to it"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              width: 800,
              child: Card(
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(40)),
                color: Colors.black45,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/chatroom.png'),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      "Chat Room",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      width: 55,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: _chatroom,
                      child: Text("Open"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                        "Char Room is a gui based application which is operated by one \n"
                        "server.Clients connects to the particular server via \nterminal and chat"),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Container(
              width: 800,
              child: Card(
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(40)),
                color: Colors.black45,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/games.png'),
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      "2D Games",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      width: 58,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: _2D,
                      child: Text("Open"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                        "Here I made a few games like Tic-Tac-Toe,SpaceInvaders,Snake etc..."),
                  ],
                ),
              ),
            ),
            Container(
              width: 800,
              child: Card(
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blueGrey),
                    borderRadius: BorderRadius.circular(40)),
                color: Colors.black45,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/ytdownload.jpg'),
                    ),
                    SizedBox(
                      width: 23,
                    ),
                    Text(
                      "   YouTube \n"
                      " Downloader",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    SizedBox(
                      width: 45,
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: Colors.green,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      onPressed: _ytd,
                      child: Text("Open"),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                        "Now user can download their favourite videos from YouTube \nusing this project"),
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
