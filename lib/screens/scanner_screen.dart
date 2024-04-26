import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:provider/provider.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScannerScreen extends StatefulWidget {
  const ScannerScreen({Key? key}) : super(key: key);

  static const routeName = '/scanner';

  @override
  _ScannerScreenState createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  late QRViewController controller;
  bool isScanning = true; // Flag to determine if scanning is enabled

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      // Handle scanned QR code data
      if (isScanning) {
        String? scannedCode = scanData.code;

        // Check if scanned code is valid (e.g., "projets" or "batiment")
        final appState = Provider.of<MainAppState>(context, listen: false);

        // Vérifier le type de code scanné et déverrouiller le bouton correspondant
        if (scannedCode == 'projets') {
          appState.setIsLockedButton1(false); // Déverrouiller le bouton 1
        } else if (scannedCode == 'batiment') {
          appState.setIsLockedButton2(false); // Déverrouiller le bouton 2
        }

        // Stop scanning after processing the first valid QR code
        setState(() {
          isScanning = false;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('QR Code Scanner'),
      ),
      body: Column(
        children: [
          Expanded(
            child: QRView(
              key: qrKey,
              onQRViewCreated: _onQRViewCreated,
            ),
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
