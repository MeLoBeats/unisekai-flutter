import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/language_alert_dialog.dart';
import 'package:flutter_application_1/components/locked_button.dart';
import 'package:flutter_application_1/components/typography.dart'
    // ignore: library_prefixes
    as AppTypography;
import 'package:getwidget/getwidget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  static const routeName = '/home';

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E7865),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xFF0E7865),
        actions: <Widget>[
          GFIconButton(
            icon: const Icon(
              Icons.language,
              color: Colors.white,
            ),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return const LanguageAlertDialog();
                },
              );
            },
            type: GFButtonType.transparent,
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 60),
            const Image(
              image: AssetImage('assets/images/logo.png'),
              width: 200.0,
            ),
            const SizedBox(height: 50),
            Text(
              AppLocalizations.of(context)!.landingText,
              style: AppTypography.Typography.headline,
            ),
            const SizedBox(height: 30),
            Column(
              children: [
                LockedButton(
                  label: AppLocalizations.of(context)!.mmiformations,
                  isLocked: false,
                ),
                const SizedBox(height: 30),
                LockedButton(
                  label: AppLocalizations.of(context)!.batimentStory,
                ),
                const SizedBox(height: 30),
                LockedButton(
                  label: AppLocalizations.of(context)!.quizPlay,
                ),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/scanner');
          },
          backgroundColor: Colors.white,
          child: const Icon(
            Icons.qr_code,
            size: 40.0,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}
