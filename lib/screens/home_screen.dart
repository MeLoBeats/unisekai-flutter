import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/language_alert_dialog.dart';
import 'package:flutter_application_1/components/locked_button.dart';
import 'package:flutter_application_1/components/typography.dart'
    // ignore: library_prefixes
    as AppTypography;
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/models/locked_feature.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

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
              Icons.translate_outlined,
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
            const SizedBox(height: 30),
            GestureDetector(
              child: const Image(
                image: AssetImage('assets/images/logo.png'),
                width: 200.0,
              ),
              onTap: () {
                final appState =
                    Provider.of<MainAppState>(context, listen: false);

                appState.setIsLockedButton1(!appState.isLockedButton1);
                appState.setIsLockedButton2(!appState.isLockedButton2);
              },
            ),
            const SizedBox(height: 20),
            Text(
              AppLocalizations.of(context)!.landingText,
              style: AppTypography.Typography.title,
            ),
            const SizedBox(height: 50),
            Column(
              children: [
                LockedButton(
                  label: AppLocalizations.of(context)!.mmiformations,
                  isLocked: false,
                  pageUrl: "/mmi",
                ),
                const SizedBox(height: 30),
                Consumer(builder: (context, MainAppState appState, child) {
                  return LockedButton(
                    label: AppLocalizations.of(context)!.projets,
                    isLocked: appState.isLockedButton1,
                    pageUrl: "/ar",
                  );
                }),
                const SizedBox(height: 30),
                Consumer(builder: (context, MainAppState appState, child) {
                  return LockedButton(
                    label: AppLocalizations.of(context)!.batimentStory,
                    isLocked: appState.isLockedButton2,
                    pageUrl: "/batiment-illustration",
                  );
                }),
              ],
            )
          ],
        ),
      ),
      floatingActionButton: SizedBox(
        width: 90,
        height: 90,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.of(context).pushNamed('/scanner');
          },
          backgroundColor: Colors.white,
          child: const Icon(
            Icons.qr_code,
            size: 60.0,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndFloat,
    );
  }
}
