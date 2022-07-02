import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:colorful_iconify_flutter/icons/emojione.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/zondicons.dart';
import 'package:url_launcher/url_launcher.dart';

class WebView extends StatefulWidget {
  var title;

  WebView({Key? key, required this.title}) : super(key: key);

  @override
  State<WebView> createState() => _WebViewState();
}

class _WebViewState extends State<WebView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 110),
          child: Text('Web View', style: GoogleFonts.poppins()),
        ),
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      body: Center(
          child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Colors.black,
              Color.fromARGB(246, 2, 0, 0),
            ])),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 120),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hi!,',
                            style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    color: Colors.white, fontSize: 100)),
                          ),
                          const SizedBox(height: 22),
                          Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: 'My name is ',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white, fontSize: 20),
                                ),
                                TextSpan(
                                  text: 'Ephraim Umunnakwe',
                                  style: GoogleFonts.poppins(
                                      color: Colors.orangeAccent,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextSpan(
                                  text: ', a Mobile Developer with ',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white, fontSize: 20),
                                ),
                                TextSpan(
                                  text: ' 3 years+',
                                  style: GoogleFonts.poppins(
                                      color: Colors.orangeAccent, fontSize: 20),
                                ),
                                TextSpan(
                                  text:
                                      ' Experience working as a Mobile Developer (Android Native and Flutter).',
                                  style: GoogleFonts.poppins(
                                      color: Colors.white, fontSize: 20),
                                ),
                                TextSpan(
                                  text:
                                      '\n\n Hey! this site was written in flutter',
                                  style: GoogleFonts.poppins(
                                      color: Colors.orangeAccent,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 30),
                    Expanded(
                        child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      minRadius: 75,
                      maxRadius: 100,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(150.0),
                          child: Image.asset('images/yfd_logo.png')),
                    ))
                  ],
                ),
                const SizedBox(height: 100),
                Text(
                  'Road Map',
                  style: GoogleFonts.poppins(
                    color: Colors.orangeAccent,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'My journey',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Text.rich(TextSpan(
                  children: [
                    TextSpan(
                      text: '2015 - 2018(Genesis): ',
                      style: GoogleFonts.poppins(
                        color: Colors.orangeAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      spellOut: true,
                      text:
                          ' Spent them learning different languages to find \n'
                          'which one is best for me => C, C++, C#, Swift, Java,'
                          ' Kotlin and Python',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                )),
                const SizedBox(height: 20),
                Text.rich(TextSpan(
                  children: [
                    TextSpan(
                      text: '2019 - 2021: ',
                      style: GoogleFonts.poppins(
                        color: Colors.orangeAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text:
                          ' Gone into Android Development with Java and Kotlin',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                )),
                const SizedBox(height: 20),
                Text.rich(TextSpan(
                  children: [
                    TextSpan(
                      text: 'Present day: ',
                      style: GoogleFonts.poppins(
                        color: Colors.orangeAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' Now developing flutter apps coupled with Java in '
                          'selected cases',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                )),
                const SizedBox(height: 20),
                Text.rich(TextSpan(
                  children: [
                    TextSpan(
                      text: 'In the future: ',
                      style: GoogleFonts.poppins(
                        color: Colors.orangeAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: ' Thinking of going into AI with Python',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ],
                )),
                const SizedBox(height: 100),
                Text(
                  'Acheivements',
                  style: GoogleFonts.poppins(
                    color: Colors.orangeAccent,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  'I am a developer',
                  style: GoogleFonts.poppins(
                    color: Colors.blue,
                    fontSize: 50,
                    fontWeight: FontWeight.normal,
                  ),
                ),
                const SizedBox(height: 100),
                Text(
                  'Tech Skill sets',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(FontAwesomeIcons.android,
                              color: Colors.orangeAccent),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Android Development (Java/Kotlin)',
                            style: GoogleFonts.poppins(
                              color: Colors.orangeAccent,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(FontAwesomeIcons.xmark,
                              color: Colors.orangeAccent),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Cross Platform Developmet (Dart)',
                            style: GoogleFonts.poppins(
                              color: Colors.orangeAccent,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(FontAwesomeIcons.palette,
                              color: Colors.orangeAccent),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Graphic Design',
                            style: GoogleFonts.poppins(
                              color: Colors.orangeAccent,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 100),
                Text(
                  'Non - Tech Skill sets',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(FontAwesomeIcons.crown,
                              color: Colors.orangeAccent),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Leadership',
                            style: GoogleFonts.poppins(
                              color: Colors.orangeAccent,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(FontAwesomeIcons.microphone,
                              color: Colors.orangeAccent),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Communication',
                            style: GoogleFonts.poppins(
                              color: Colors.orangeAccent,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(FontAwesomeIcons.penNib,
                              color: Colors.orangeAccent),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Drawing',
                            style: GoogleFonts.poppins(
                              color: Colors.orangeAccent,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(FontAwesomeIcons.brain,
                              color: Colors.orangeAccent),
                          const SizedBox(
                            height: 15,
                          ),
                          Text(
                            'Problem solving',
                            style: GoogleFonts.poppins(
                              color: Colors.orangeAccent,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 100),
                Text(
                  'Here is my Gihub',
                  style: GoogleFonts.poppins(
                    color: Colors.orangeAccent,
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.github, color: Colors.white),
                    const SizedBox(width: 20),
                    Text(
                      ' Leo-Chan01',
                      style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 155),
                Text(
                  'Contact Me',
                  style: GoogleFonts.poppins(
                      color: Colors.orangeAccent,
                      fontSize: 50,
                      fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 40),
                Text(
                  'I share my insights and publish stuff through these platforms: ',
                  style: GoogleFonts.poppins(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.whatsapp, color: Colors.white),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () async {
                        await launchUrl(
                            Uri.parse('https://wa.me/2348083664431'));
                      },
                      child: Text(
                        ' +234 808 366 4431',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.instagram, color: Colors.white),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () async {
                        await launchUrl(Uri.parse(
                            'https://instagram.com/your.favourite.developer'));
                      },
                      child: Text(
                        ' @your.favourite.developer',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.twitter, color: Colors.white),
                    const SizedBox(width: 20),
                    GestureDetector(
                      onTap: () async {
                        await launchUrl(
                            Uri.parse('https://twitter.com/u_ephraim'));
                      },
                      child: Text(
                        ' @u_ephraim',
                        style: GoogleFonts.poppins(
                            color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    FaIcon(FontAwesomeIcons.facebook, color: Colors.white),
                    const SizedBox(width: 20),
                    Text(
                      ' Your favourite developer',
                      style: GoogleFonts.poppins(
                          color: Colors.white, fontSize: 20),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      )),
    );
  }
}

void _launchURL(var url) async =>
    await canLaunch(url) ? await launch(url) : throw 'Could not launch';
