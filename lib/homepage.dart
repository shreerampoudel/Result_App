import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'info.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        title: const Text("Results Nepal"),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: Container(
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              colors: [Colors.black,Color.fromARGB(255, 94, 93, 93)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8.0, 50.0, 8.0, 8.0),
            child: Column(
              children: [
                const CircleAvatar(
                  backgroundImage:AssetImage('images/graduate.jpg'), 
                  radius: 50,
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(
                  height: 7,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Result_App",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
                const Divider(
                  color: Color.fromARGB(255, 255, 255, 255),
                  thickness: 3,
                  indent: 20,
                  endIndent: 20,
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: drawerList.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              drawerList[index].icon,
                              color: const Color.fromARGB(255, 255, 255, 255),
                            ),
                            title: Text(
                              drawerList[index].title,
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                const Divider(
                  color: Color.fromARGB(255, 255, 255, 255),
                  thickness: 3,
                  indent: 20,
                  endIndent: 20,
                ),
                const ListTile(
                  leading: Icon(
                    Icons.logout,
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                  title: Text(
                    "Log out",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image:
                AssetImage('images/tree.jpg'), // Replace with your image path
            fit: BoxFit.cover,
          ),
        ),
        child: GridView.count(
          crossAxisCount: 2,
          children: const [
            Readbox(
              "SEE Results",
                           "http://see.gov.np/exam/results",
            ),
            Readbox(
              "NEB Result",
              "http://www.neb.gov.np/results",
            ),
            Readbox(
              "IOE Result",
              "https://exam.ioe.edu.np/",
            ),
            Readbox(
              "IOM Result",
              "http://iomexam.edu.np/index.php/exam/results",
            ),
            Readbox(
              "TU Result",
              "https://www.tuexam.edu.np/",
            ),
            Readbox(
              "PU Result",
              "https://puexam.edu.np/index.php/find-results",
            ),
            Readbox(
              "IPO Result",
              "https://iporesult.cdsc.com.np/",
            ),
          ],
        ),
      ),
    );
  }
}

class Readbox extends StatelessWidget {
  final String title;
  final String url;
  const Readbox(this.title, this.url, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          decoration: const BoxDecoration(
            color: Color.fromRGBO(46, 46, 46, 0.675),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
          child: Center(
              child: Text(
            title,
            style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold,color:Colors.white),
          )),
        ),
      ),
      onTap: () {
        // ignore: deprecated_member_use
        launch(url);
      },
    );
  }
}
