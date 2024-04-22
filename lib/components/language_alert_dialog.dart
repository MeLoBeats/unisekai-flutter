import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';

class LanguageAlertDialog extends StatefulWidget {
  const LanguageAlertDialog({Key? key}) : super(key: key);

  @override
  _LanguageAlertDialogState createState() => _LanguageAlertDialogState();
}

class _LanguageAlertDialogState extends State<LanguageAlertDialog> {
  String? _selectedLanguage;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Choose a language'),
      content: SingleChildScrollView(
        child: ListBody(
          children: <Widget>[
            RadioListTile<String>(
              title: const Text('English'),
              value: 'English',
              groupValue: _selectedLanguage,
              onChanged: (String? value) {
                setState(() {
                  MainApp.of(context)?.setLocale(const Locale('en'));
                  _selectedLanguage = value;
                });
              },
            ),
            RadioListTile<String>(
              title: const Text('French'),
              value: 'French',
              groupValue: _selectedLanguage,
              onChanged: (String? value) {
                setState(() {
                  MainApp.of(context)?.setLocale(const Locale('fr'));
                  _selectedLanguage = value;
                });
              },
            ),
          ],
        ),
      ),
      actions: <Widget>[
        TextButton(
          child: const Text('Cancel'),
          onPressed: () => Navigator.of(context).pop(),
        ),
        TextButton(
          child: const Text('Ok'),
          onPressed: () {
            Navigator.of(context).pop(_selectedLanguage);
          },
        ),
      ],
    );
  }
}
