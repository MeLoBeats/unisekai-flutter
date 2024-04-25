import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/language_alert_dialog.dart';
import 'package:getwidget/getwidget.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class StratUXScreen extends StatefulWidget {
  const StratUXScreen({super.key});

  static const routeName = '/mmi/strat-ux';

  @override
  StratUXScreenState createState() => StratUXScreenState();
}

class StratUXScreenState extends State<StratUXScreen> {
  final List<AssetImage> imageList = [
    const AssetImage('assets/images/UNISEKAIVISUINSTA_STRATUX01.png'),
    const AssetImage('assets/images/UNISEKAIVISUINSTA_STRATUX02.png'),
    const AssetImage('assets/images/UNISEKAIVISUINSTA_STRATUX03.png'),
    const AssetImage('assets/images/UNISEKAIVISUINSTA_STRATUX04.png'),
    const AssetImage('assets/images/UNISEKAIVISUINSTA_STRATUX05.png'),
  ];

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
        child: GFCarousel(
          enableInfiniteScroll: true,
          activeIndicator: Colors.white,
          autoPlay: true,
          items: imageList.map(
            (image) {
              return Container(
                margin: const EdgeInsets.all(8.0),
                child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(5.0)),
                    child: Image(
                      image: image,
                      fit: BoxFit.cover,
                      width: 1000.0,
                      height: 1000.0,
                    )),
              );
            },
          ).toList(),
          onPageChanged: (index) {
            setState(() {
              index;
            });
          },
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
