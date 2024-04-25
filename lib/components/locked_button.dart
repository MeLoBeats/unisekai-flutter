import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class LockedButton extends StatefulWidget {
  final String label;
  final bool isLocked;
  final String pageUrl;
  const LockedButton(
      {Key? key,
      required this.label,
      this.isLocked = true,
      required this.pageUrl})
      : super(key: key);

  @override
  _LockedButtonState createState() => _LockedButtonState();
}

class _LockedButtonState extends State<LockedButton> {
  get label => null;

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: widget.isLocked ? 0.5 : 1.0,
      child: ElevatedButton(
        onPressed: () {
          if (!widget.isLocked) {
            Navigator.pushNamed(context, widget.pageUrl);
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(AppLocalizations.of(context)!.featureLocked),
                backgroundColor: Colors.red,
              ),
            );
          }
        },
        style: ButtonStyle(
          fixedSize: MaterialStateProperty.all(const Size(250, 50)),
        ),
        child: Row(
          children: [
            Icon(widget.isLocked ? Icons.lock : Icons.lock_open),
            const SizedBox(
              width: 20,
            ),
            Text(
              widget.label,
              style: const TextStyle(
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
