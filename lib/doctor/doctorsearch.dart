import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:oopt/doctor/doctorpp_widget.dart';

import 'doctor_profile.dart';
import '../Main screens/navbar.dart';
import 'doctr_profile_for_mother.dart';

class doctorsearch extends StatefulWidget {
  doctorsearch({
    Key? key,
  }) : super(key: key);

  @override
  State<doctorsearch> createState() => _doctorsearchState();
}

class _doctorsearchState extends State<doctorsearch> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double listViewWidth = screenWidth > 550 ? 550 : screenWidth;
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
          child: IconButton(
            iconSize: 30,
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Doctor',
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 25,
                ),
              ),
            ),
            Flexible(
              child: StreamBuilder<QuerySnapshot>(
                stream:
                    FirebaseFirestore.instance.collection('doctor').snapshots(),
                builder: (context, snapshot) {
                  if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                    return Center(
                      child: Text(
                        "No Doctor Found",
                        style: TextStyle(color: Colors.grey),
                      ),
                    );
                  } else {
                    return Container(
                      width: listViewWidth,
                      child: ListView.builder(
                        itemCount: snapshot.data!.docs.length,
                        itemBuilder: ((context, index) {
                          DocumentSnapshot documentSnapshot =
                              snapshot.data!.docs[index];
                          return doctorlist(
                            documentSnapshot['doctorName'],
                            documentSnapshot['doctorType'],
                            documentSnapshot['workingHours'],
                            documentSnapshot['doctorpp'],
                            documentSnapshot['contact'],
                            documentSnapshot['gender'],
                            documentSnapshot['hospitalClinicAddress'],
                            documentSnapshot['hospitalClinicName'],
                            documentSnapshot['qualification'],
                            documentSnapshot['doctorLocation'],
                          );
                        }),
                      ),
                    );
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
