import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

launchURL(String url) async {
  if (await canLaunch(url)) {
    await launch(url, forceWebView: true);
  } else {
    throw 'Could not launch $url';
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: Colors.white,
              radius: 50.0,
              backgroundImage: AssetImage("images/bhavuk.jpg"),
            ),
            Text(
              'Bhavuk Kalra',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 30.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'FLUTTER DEVELOPER',
              style: TextStyle(
                fontFamily: 'SourceSansPro',
                fontSize: 16.0,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 20.0,
              width: 200.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
              child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'bhavukkalra1786@gamil.com',
                      style: TextStyle(
                          fontSize: 18,
                          color: Colors.teal.shade900,
                          fontFamily: 'SourceSansPro'),
                    ),
                  )),
            ),
            InkWell(
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.find_in_page,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'bhavukkalra.github.io',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.teal.shade900,
                          fontFamily: 'SourceSansPro'),
                    ),
                  ),
                ),
              ),
              onTap: () {
                const String webiste_url = 'https://bhavukkalra.github.io/';
                launchURL(webiste_url);
              },
            ),
            InkWell(
              child: Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.border_color,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'bhavukkalra.hashnode.dev',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.teal.shade900,
                            fontFamily: 'SourceSansPro'),
                      ),
                    )),
              ),
              onTap: () {
                const String blog_url = 'https://bhavukkalra.hashnode.dev/';
                launchURL(blog_url);
              },
            )
          ],
        )),
      ),
    );
  }
}
