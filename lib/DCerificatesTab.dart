import 'package:flutter/material.dart';

class DCertificatesTab extends StatelessWidget {
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
                  height: 10,
                ),
                Text("Cerficates",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                SizedBox(height: 15),
                Center(
                  child: Text(
                    "The below Certificates includes:",
                    style: TextStyle(fontSize: 20, color: Colors.yellowAccent),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  width: 500,
                  child: Card(
                    elevation: 200,
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.cyanAccent),
                        borderRadius: BorderRadius.circular(50)),
                    color: Colors.black45,
                    child: Center(
                      child: Text(
                        "\n✨ Competitive Programming \n✨ 2D Animation \n✨ Intra College Competitions\n",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  width: 1000,
                  child: Image.asset('assets/certify.jpg'),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Note: I hereby mention that these certificates are legit",
                  style: TextStyle(
                    color: Colors.blueGrey[300],
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                  ),
                )
              ],
            ),
          )),
    );
  }
}
