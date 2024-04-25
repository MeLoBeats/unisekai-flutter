import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/language_alert_dialog.dart';
import 'package:flutter_application_1/components/typography.dart'
    // ignore: library_prefixes
    as AppTypography;
import 'package:getwidget/getwidget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MMiFormationScreen extends StatefulWidget {
  const MMiFormationScreen({super.key});

  static const routeName = '/mmi';

  @override
  MMiFormationScreenState createState() => MMiFormationScreenState();
}

class MMiFormationScreenState extends State<MMiFormationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff3e4645),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff3e4645),
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
            const SizedBox(height: 50),
            Text(
              AppLocalizations.of(context)!.formationMMIHeading,
              style: AppTypography.Typography.headline,
            ),
            const SizedBox(height: 30),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/mmi/creation-numerique');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFFCE1126),
                    ),
                    foregroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFFFFFFFF),
                    ),
                  ),
                  child: const Text("Création Numérique"),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/mmi/strat-ux');
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFF33ADD7),
                      ),
                      foregroundColor: MaterialStateProperty.all<Color>(
                        const Color(0xFFFFFFFF),
                      ),
                    ),
                    child: const Text("Strat. Communication")),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/mmi/dev');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFF7CE1AA),
                    ),
                    foregroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFFFFFFFF),
                    ),
                  ),
                  child: const Text("Développement Web"),
                ),
                const SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/mmi/lp-jeux');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFFF2B705),
                    ),
                    foregroundColor: MaterialStateProperty.all<Color>(
                      const Color(0xFFFFFFFF),
                    ),
                  ),
                  child: const Text("Licence Jeux-Vidéo"),
                )
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
