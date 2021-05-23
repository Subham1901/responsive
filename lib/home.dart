import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';
import 'package:animated_text_kit/animated_text_kit.dart';

class myhome extends StatefulWidget {
  @override
  _myhomeState createState() => _myhomeState();
}

class _myhomeState extends State<myhome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(children: <Widget>[
          Container(
              decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/main.jpg'),
              fit: BoxFit.cover,
            ),
          )),
          LayoutBuilder(builder: (context, snapshot) {
            if (snapshot.maxWidth < 900) {
              return newMethod();
            } else {
              return Expanded(child: newMethodelse());
            }
          }),
        ]),
      ),
    );
  }

  Column newMethodelse() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(padding: EdgeInsets.only(top: 50.0)),
        Center(
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/My/my.jpg'),
            radius: 90.0,
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 10.0)),
        Text(
          "Hi.. There!👋",
          style: GoogleFonts.lato(
            textStyle: TextStyle(color: Colors.white, letterSpacing: .5),
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
          ),
        ),
        Text(
          "I am Subham,and my portfolio is a representation of all that i have learned and ",
          style: GoogleFonts.lato(
            textStyle: TextStyle(color: Colors.white, letterSpacing: .5),
            fontSize: 18.0,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
        ),
        Text(
          "accomplished as a science and engineering student",
          style: GoogleFonts.lato(
            textStyle: TextStyle(color: Colors.white, letterSpacing: .5),
            fontSize: 18.0,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
        ),
        Padding(padding: EdgeInsets.only(top: 10.0)),
        Text(
          "Connect With me...",
          style: GoogleFonts.lato(
            textStyle: TextStyle(color: Colors.yellow, letterSpacing: .5),
            fontSize: 15.0,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal,
          ),
        ),
        Icon(
          Icons.arrow_circle_down,
          color: Colors.white,
        ),
        Padding(padding: EdgeInsets.only(top: 15.0)),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(children: [
              Container(
                height: 40.0,
                width: 150.0,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                ),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                          icon: new Icon(
                            FontAwesomeIcons.linkedin,
                            color: Colors.white,
                          ),
                          onPressed: () async {
                            const url =
                                'https://www.linkedin.com/in/subham-prasad-panda-a4b2371b6/';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          }),
                      IconButton(
                          icon: new Icon(
                            FontAwesomeIcons.instagram,
                            color: Colors.white,
                          ),
                          onPressed: () async {
                            const url =
                                'https://www.instagram.com/subham_sp24?r=nametag';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          }),
                      IconButton(
                          icon: new Icon(
                            FontAwesomeIcons.github,
                            color: Colors.white,
                          ),
                          onPressed: () async {
                            const url = 'https://github.com/Subham1901';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Could not launch $url';
                            }
                          }),
                    ],
                  ),
                ),
              ),
            ]),
            Padding(padding: EdgeInsets.only(left: 20.0)),
            Container(
              height: 40.0,
              width: 150.0,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white),
              ),
              child: TextButton(
                  child:
                      Text('My Resume', style: TextStyle(color: Colors.white)),
                  onPressed: () async {
                    const url =
                        'https://drive.google.com/file/d/1AGoAR8ULGUqbCfq2ApIKGBingkxGOH7o/view?usp=sharing';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  }),
            )
          ],
        ),
        Padding(padding: EdgeInsets.only(top: 50.0)),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Text(
                "D E S I G N E D B Y S U B H A M",
                style: GoogleFonts.lato(
                  textStyle: TextStyle(color: Colors.white, letterSpacing: 2.4),
                  fontSize: 10.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 20.0)),
            Container(
              child: Center(
                child: ScaleAnimatedTextKit(
                  text: [
                    "Think",
                    "Design",
                    "Build",
                    "Run",
                  ],
                  textStyle: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: "Canterbury"),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Column newMethod() {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: <
        Widget>[
      Padding(padding: EdgeInsets.only(top: 50.0)),
      Center(
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/My/my.jpg'),
          radius: 70.0,
        ),
      ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Hi.. There!👋",
              style: GoogleFonts.lato(
                textStyle: TextStyle(color: Colors.white, letterSpacing: .5),
                fontSize: 22.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              "I am Subham,and my portfolio is a representation",
              style: GoogleFonts.lato(
                textStyle: TextStyle(color: Colors.white, letterSpacing: .5),
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "of all that i have learned and accomplished ",
              style: GoogleFonts.lato(
                textStyle: TextStyle(color: Colors.white, letterSpacing: .5),
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
              ),
            ),
            Text(
              "as a science and engineering student ",
              style: GoogleFonts.lato(
                textStyle: TextStyle(color: Colors.white, letterSpacing: .5),
                fontSize: 15.0,
                fontWeight: FontWeight.w600,
                fontStyle: FontStyle.normal,
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10.0)),
            Text(
              "Connect With me...",
              style: GoogleFonts.lato(
                textStyle: TextStyle(color: Colors.yellow, letterSpacing: .5),
                fontSize: 15.0,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal,
              ),
            ),
            Icon(
              Icons.arrow_circle_down,
              color: Colors.white,
            ),
            Padding(padding: EdgeInsets.only(top: 30.0)),
            Column(
              children: [
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                    height: 40.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              icon: new Icon(
                                FontAwesomeIcons.linkedin,
                                color: Colors.white,
                              ),
                              onPressed: () async {
                                const url =
                                    'https://www.linkedin.com/in/subham-prasad-panda-a4b2371b6/';
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              }),
                          IconButton(
                              icon: new Icon(
                                FontAwesomeIcons.instagram,
                                color: Colors.white,
                              ),
                              onPressed: () async {
                                const url =
                                    'https://www.instagram.com/subham_sp24?r=nametag';
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              }),
                          IconButton(
                              icon: new Icon(
                                FontAwesomeIcons.github,
                                color: Colors.white,
                              ),
                              onPressed: () async {
                                const url = 'https://github.com/Subham1901';
                                if (await canLaunch(url)) {
                                  await launch(url);
                                } else {
                                  throw 'Could not launch $url';
                                }
                              }),
                        ],
                      ),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 20.0)),
                  Container(
                    height: 40.0,
                    width: 150.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.white),
                    ),
                    child: TextButton(
                        child: Text('My Resume',
                            style: TextStyle(color: Colors.white)),
                        onPressed: () async {
                          const url =
                              'https://drive.google.com/file/d/1AGoAR8ULGUqbCfq2ApIKGBingkxGOH7o/view?usp=sharing';
                          if (await canLaunch(url)) {
                            await launch(url);
                          } else {
                            throw 'Could not launch $url';
                          }
                        }),
                  ),
                  Padding(padding: EdgeInsets.only(top: 50.0)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        child: Text(
                          "D E S I G N E D B Y S U B H A M",
                          style: GoogleFonts.lato(
                            textStyle: TextStyle(
                                color: Colors.white, letterSpacing: 2.4),
                            fontSize: 10.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(padding: EdgeInsets.only(top: 30.0)),
                      Container(
                        child: Center(
                          child: ScaleAnimatedTextKit(
                            text: [
                              "Think",
                              "Design",
                              "Build",
                              "Run",
                            ],
                            textStyle: TextStyle(
                                fontSize: 20.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontFamily: "Canterbury"),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ],
                  ),
                ])
              ],
            )
          ],
        ),
      )
    ]);
  }
}
