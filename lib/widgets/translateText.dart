import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class TranslateText extends StatefulWidget {
  TranslateText({Key key, this.onTextTouched}) : super(key: key);

  final Function(bool) onTextTouched;

  @override
  _TranslateTextState createState() => _TranslateTextState();
}

class _TranslateTextState extends State<TranslateText> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      margin: EdgeInsets.all(0.0),
      elevation: 1.0,
      child: Container(
        height: 180.0,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  this.widget.onTextTouched(true);
                },
                
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 18.0, right: 18.0, top: 25.0),
                  
                  child: Text(
                    "Tap to enter text",
                    style: GoogleFonts.raleway(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
