import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oopt/Baby/BabyForm.dart';
import 'package:oopt/Pregnant%20Women/PregnantFormPageGradient.dart';

class ProfileSelection extends StatefulWidget {
  const ProfileSelection({Key? key}) : super(key: key);

  @override
  State<ProfileSelection> createState() => _ProfileSelectionState();
}

class _ProfileSelectionState extends State<ProfileSelection> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
              child: Row(
                children: [
                  CircleAvatar(
                    minRadius: 25.0,
                    backgroundImage: AssetImage("assets/logocolor.png"),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Maternio",
                    style: GoogleFonts.poppins(fontSize: 24),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
              child: Row(
                children: [
                  Text(
                    "Hello ",
                    style: GoogleFonts.poppins(fontSize: 20),
                  ),
                  Text(
                    FirebaseAuth.instance.currentUser!.phoneNumber.toString(),
                    style: GoogleFonts.akshar(
                      fontWeight: FontWeight.w500,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 10, 0, 0),
              child: Text(
                "I believe that the greatest gift you can give your\nfamily and the world is a healthy you.",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.fromLTRB(29, 10, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Who Am I?",
                    style: GoogleFonts.akshar(
                      fontWeight: FontWeight.w500,
                      fontSize: 27,
                      color: Colors.deepPurpleAccent.shade700,
                    ),
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.deepPurpleAccent.shade100,
                    minRadius: 17.0,
                    backgroundImage: AssetImage("assets/question.png"),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BabyFormPage(),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 5,
                              ),
                            ],
                            color: Colors.deepPurpleAccent.shade100,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 0, right: 80, top: 15),
                                child: Icon(
                                  Icons.child_care,
                                  size: 50,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 5),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(20, 15, 0, 0),
                                child: Text(
                                  "Baby/Mother",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 28,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Image.asset(
                                  "assets/mother.png",
                                  width: 170,
                                  height: 230,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 15, 45),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => PregnantFormPage(),
                            ),
                          );
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                blurRadius: 5,
                              ),
                            ],
                            color: Colors.deepPurpleAccent.shade100,
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 0, right: 80, top: 15),
                                child: Icon(
                                  Icons.pregnant_woman_sharp,
                                  size: 38,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 25),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Text(
                                  "Pregnant Women",
                                  style: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 25,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Image.asset(
                                  "assets/pregnantw.png",
                                  width: 270,
                                  height: 270,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
