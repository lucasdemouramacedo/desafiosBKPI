import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_switch/flutter_switch.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool _switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[100],
      child: Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.05),
        child: Stack(
          children: [
            Positioned(
              child: Container(
                color: Colors.transparent,
                height: MediaQuery.of(context).size.height * 0.35,
                width: MediaQuery.of(context).size.width * 1,
                child: Stack(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(30, 30, 0, 0),
                      child: Icon(
                        Icons.arrow_back_ios_new_rounded,
                        size: 30,
                        color: Colors.black54,
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(100.0),
                              child: const Image(
                                image: AssetImage('assets/user.jpg'),
                                fit: BoxFit.cover,
                                height: 130,
                                width: 130,
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('João Möller',
                                  style: GoogleFonts.robotoSlab(
                                      textStyle: const TextStyle(
                                          color: Colors.black,
                                          decoration: TextDecoration.none,
                                          fontSize: 26,
                                          fontWeight: FontWeight.w900)))
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 2),
                              child: Icon(
                                Icons.location_on_outlined,
                                size: 18,
                                color: Colors.black38,
                              ),
                            ),
                            Text('Brasília, Brasil',
                                style: GoogleFonts.lato(
                                    textStyle: const TextStyle(
                                        color: Colors.black54,
                                        decoration: TextDecoration.none,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w500)))
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text('Visual Designer',
                                  style: GoogleFonts.lato(
                                      textStyle: const TextStyle(
                                          color: Colors.black87,
                                          decoration: TextDecoration.none,
                                          fontSize: 18,
                                          fontWeight: FontWeight.w900))),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 30),
                              child: TextButton(
                                style: ButtonStyle(
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(100.0),
                                  )),
                                  foregroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.white),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.pink),
                                ),
                                onPressed: () {},
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(25, 5, 25, 5),
                                  child: Text(
                                    'Upgrade Now - Go Pro',
                                    style: GoogleFonts.robotoSlab(
                                        textStyle: const TextStyle(
                                            color: Colors.white,
                                            decoration: TextDecoration.none,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w800)),
                                  ),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
                bottom: MediaQuery.of(context).size.height * 0.00,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.60,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.blueGrey,
                          spreadRadius: -10,
                          blurRadius: 30,
                          offset: Offset(0, 10), // changes position of shadow
                        ),
                      ],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(60.0),
                        topRight: Radius.circular(60.0),
                      )),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(50, 30, 50, 60),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text('Settings',
                                style: GoogleFonts.robotoSlab(
                                    textStyle: const TextStyle(
                                        color: Colors.black,
                                        decoration: TextDecoration.none,
                                        fontSize: 30,
                                        fontWeight: FontWeight.w800)))
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Colors.black),
                                      child: const Center(
                                        child: Icon(
                                          Icons.dark_mode_rounded,
                                          size: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text('Dark Mode',
                                      style: GoogleFonts.lato(
                                          textStyle: const TextStyle(
                                              color: Colors.black,
                                              decoration: TextDecoration.none,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400)))
                                ],
                              ),
                              FlutterSwitch(
                                toggleSize: 25,
                                width: 55,
                                height: 30,
                                inactiveColor: Colors.black12,
                                activeColor: Colors.pink,
                                value: _switchValue,
                                onToggle: (value) {
                                  setState(() {
                                    _switchValue = value;
                                  });
                                },
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.pink),
                                    child: const Center(
                                      child: Icon(
                                        Icons.notifications,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Text('Notifications',
                                    style: GoogleFonts.lato(
                                        textStyle: const TextStyle(
                                            color: Colors.black,
                                            decoration: TextDecoration.none,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400)))
                              ],
                            ),
                            Row(
                              children: [
                                Text('On',
                                    style: GoogleFonts.lato(
                                        textStyle: const TextStyle(
                                            color: Colors.black26,
                                            decoration: TextDecoration.none,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500))),
                                const RotatedBox(
                                  quarterTurns: 2,
                                  child: Icon(
                                    Icons.arrow_back_ios_new_rounded,
                                    size: 20,
                                    color: Colors.black26,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: Colors.pink),
                                    child: const Center(
                                      child: Icon(
                                        Icons.lock,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Text('Privacy',
                                    style: GoogleFonts.lato(
                                        textStyle: const TextStyle(
                                            color: Colors.black,
                                            decoration: TextDecoration.none,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400)))
                              ],
                            ),
                            const RotatedBox(
                              quarterTurns: 2,
                              child: Icon(
                                Icons.arrow_back_ios_new_rounded,
                                size: 20,
                                color: Colors.black26,
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 10),
                                    child: Container(
                                      height: 35,
                                      width: 35,
                                      decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(50),
                                          color: Colors.pink),
                                      child: const Center(
                                        child: Icon(
                                          Icons.shield,
                                          size: 20,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Text('Security',
                                      style: GoogleFonts.lato(
                                          textStyle: const TextStyle(
                                              color: Colors.black,
                                              decoration: TextDecoration.none,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w400)))
                                ],
                              ),
                              const RotatedBox(
                                quarterTurns: 2,
                                child: Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  size: 20,
                                  color: Colors.black26,
                                ),
                              )
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: const Color.fromRGBO(
                                            109, 207, 169, 1)),
                                    child: const Center(
                                      child: Icon(
                                        Icons.person,
                                        size: 20,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                                Text('Account',
                                    style: GoogleFonts.lato(
                                        textStyle: const TextStyle(
                                            color: Colors.black,
                                            decoration: TextDecoration.none,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400)))
                              ],
                            ),
                            const RotatedBox(
                              quarterTurns: 2,
                              child: Icon(
                                Icons.arrow_back_ios_new_rounded,
                                size: 20,
                                color: Colors.black26,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: const Color.fromRGBO(
                                            109, 207, 169, 1)),
                                    child: Center(
                                        child: Text('?',
                                            style: GoogleFonts.lato(
                                                textStyle: const TextStyle(
                                                    color: Colors.white,
                                                    decoration:
                                                        TextDecoration.none,
                                                    fontSize: 24,
                                                    fontWeight:
                                                        FontWeight.w900)))),
                                  ),
                                ),
                                Text('Help',
                                    style: GoogleFonts.lato(
                                        textStyle: const TextStyle(
                                            color: Colors.black,
                                            decoration: TextDecoration.none,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400)))
                              ],
                            ),
                            const RotatedBox(
                              quarterTurns: 2,
                              child: Icon(
                                Icons.arrow_back_ios_new_rounded,
                                size: 20,
                                color: Colors.black26,
                              ),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 10),
                                  child: Container(
                                    height: 35,
                                    width: 35,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(50),
                                        color: const Color.fromRGBO(
                                            109, 207, 169, 1)),
                                    child: Center(
                                        child: Text('i',
                                            style: GoogleFonts.robotoSlab(
                                                textStyle: const TextStyle(
                                                    color: Colors.white,
                                                    decoration:
                                                        TextDecoration.none,
                                                    fontSize: 20,
                                                    fontWeight:
                                                        FontWeight.w900)))),
                                  ),
                                ),
                                Text('About',
                                    style: GoogleFonts.lato(
                                        textStyle: const TextStyle(
                                            color: Colors.black,
                                            decoration: TextDecoration.none,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w400)))
                              ],
                            ),
                            const RotatedBox(
                              quarterTurns: 2,
                              child: Icon(
                                Icons.arrow_back_ios_new_rounded,
                                size: 20,
                                color: Colors.black26,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
