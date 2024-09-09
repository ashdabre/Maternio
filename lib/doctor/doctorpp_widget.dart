import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'doctr_profile_for_mother.dart';

class doctorlist extends StatefulWidget {
  String docname = "";
  String doctype = "";
  String docworkinghrs = "";
  String photo = "";
  String docgender = "";
  String docqualification = "";
  String doccontact = "";
  String dochospitalname = "";
  String dochospitaladd = "";
  String doclocation = "";

  doctorlist(
    this.docname,
    this.doctype,
    this.docworkinghrs,
    this.photo,
    this.doccontact,
    this.docgender,
    this.dochospitaladd,
    this.dochospitalname,
    this.docqualification,
    this.doclocation,
  );

  @override
  State<doctorlist> createState() => _doctorlistState();
}

class _doctorlistState extends State<doctorlist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.deepPurpleAccent,
        boxShadow: [BoxShadow(blurRadius: 5)],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.all(10),
            width: 90,
            child: CircleAvatar(
              backgroundColor: Colors.black,
              radius: 40,
              backgroundImage: NetworkImage(widget.photo),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Text(
                    widget.docname,
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 5),
                  child: Text(
                    widget.doctype + ", " + widget.doclocation,
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 35),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => doctor_profile_mess(
                              widget.docname,
                              widget.doctype,
                              widget.docworkinghrs,
                              widget.photo,
                              widget.doccontact,
                              widget.docgender,
                              widget.dochospitaladd,
                              widget.dochospitalname,
                              widget.docqualification,
                              widget.doclocation,
                            ),
                          ),
                        );
                      },
                      child: Text(
                        'Show Profile',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(width: 20),
                    IconButton(
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => doctor_profile_mess(
                        //       widget.docname,
                        //       widget.doctype,
                        //       widget.docworkinghrs,
                        //       widget.photo,
                        //       widget.doccontact,
                        //       widget.docgender,
                        //       widget.dochospitaladd,
                        //       widget.dochospitalname,
                        //       widget.docqualification,
                        //       widget.doclocation,
                        //     ),
                        //  ),
                        // );
                      },
                      icon: Icon(
                        Icons.arrow_circle_right_outlined,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
