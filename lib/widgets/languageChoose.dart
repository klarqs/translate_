import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/language.dart';
import '../widgets/languagePage.dart';

class ChooseLanguage extends StatefulWidget {
  ChooseLanguage({Key key, this.onLanguageChanged}) : super(key: key);

  final Function(Language firstCode, Language secondCode) onLanguageChanged;

  @override
  _ChooseLanguageState createState() => _ChooseLanguageState();
}

class _ChooseLanguageState extends State<ChooseLanguage> {
  Language _firstLanguage = Language('en', 'English', true, true, true);
  Language _secondLanguage = Language('ig', 'Igbo', true, true, true);

  // Switch the first and the second language
  void _switchLanguage() {
    Language _tmpLanguage = this._firstLanguage;

    setState(() {
      this._firstLanguage = this._secondLanguage;
      this._secondLanguage = _tmpLanguage;
    });

    this.widget.onLanguageChanged(this._firstLanguage, this._secondLanguage);
  }

  // Choose a new first language
  void _chooseFirstLanguage(String title, bool isAutomaticEnabled) async {
    final language = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LanguagePage(
              title: title,
              isAutomaticEnabled: isAutomaticEnabled,
            ),
      ),
    );

    if (language != null) {
      this.setState(() {
        this._firstLanguage = language;
      });

      this.widget.onLanguageChanged(this._firstLanguage, this._secondLanguage);
    }
  }

  // Choose a new second language
  void _chooseSecondLanguage(String title, bool isAutomaticEnabled) async {
    final language = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LanguagePage(
              title: title,
              isAutomaticEnabled: isAutomaticEnabled,
            ),
      ),
    );

    if (language != null) {
      this.setState(() {
        this._secondLanguage = language;
      });

      this.widget.onLanguageChanged(this._firstLanguage, this._secondLanguage);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.0,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Colors.grey[500],
          ),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Material(
              color: Colors.white,
              child: InkWell(
                onTap: () {
                  this._chooseFirstLanguage("Languages", true);
                },
                child: Center(
                  child: Text(
                    this._firstLanguage.name,
                    style: GoogleFonts.raleway(
                      color: Colors.blueAccent,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
          Material(
            color: Colors.white,
            child: IconButton(
              icon: Icon(
                Icons.compare_arrows,
                color: Colors.grey[700],
              ),
              onPressed: this._switchLanguage,
            ),
          ),
          Expanded(
            child: Material(
              color: Colors.white,
              child: InkWell(
                onTap: () {
                  this._chooseSecondLanguage("Languages", false);
                },
                child: Center(
                  child: Text(
                    this._secondLanguage.name,
                    style: GoogleFonts.raleway(
                      color: Colors.blueAccent,
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
