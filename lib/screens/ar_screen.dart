import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/language_alert_dialog.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class ARScreen extends StatefulWidget {
  const ARScreen({super.key});

  static const routeName = '/ar';

  @override
  ARScreenState createState() => ARScreenState();
}

class ARScreenState extends State<ARScreen> {
  final List<AssetImage> imageList = [
    const AssetImage('assets/images/Frame 10.png'),
    const AssetImage('assets/images/Frame 11.png'),
    const AssetImage('assets/images/Frame 12.png'),
    const AssetImage('assets/images/Frame 13.png'),
    const AssetImage('assets/images/Frame 14.png'),
    const AssetImage('assets/images/Frame 15.png'),
  ];

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
      body: Column(
        children: [
          GFCarousel(
            enableInfiniteScroll: true,
            activeIndicator: Colors.white,
            autoPlay: true,
            items: imageList.map(
              (image) {
                return Container(
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                    child: Image(
                      image: image,
                      fit: BoxFit.contain,
                      width: 1000.0,
                      height: 1000.0,
                    ),
                  ),
                );
              },
            ).toList(),
            onPageChanged: (index) {
              setState(() {
                index;
              });
            },
          ),
        ],
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
