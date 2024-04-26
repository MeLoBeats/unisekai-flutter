import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class ScannerScreen extends StatefulWidget {
  const ScannerScreen({Key? key}) : super(key: key);

  static const routeName = '/scanner';

  @override
  _ScannerScreenState createState() => _ScannerScreenState();
}

class ExpectedScanResult {
  final String type;
  final IconData icon;

  ExpectedScanResult(this.type, this.icon);
}

class _ScannerScreenState extends State<ScannerScreen> {
  final GlobalKey qrKey = GlobalKey(debugLabel: 'QR');
  Barcode? result;
  QRViewController? controller;

  final recognisedCodes = <ExpectedScanResult>[
    ExpectedScanResult('cake', Icons.cake),
    ExpectedScanResult('cocktail', Icons.local_drink_outlined),
    ExpectedScanResult('coffee', Icons.coffee),
    ExpectedScanResult('burger', Icons.fastfood_rounded),
  ];

  @override
  void reassemble() {
    super.reassemble();
    controller!.pauseCamera();
  }

  void _onQRViewCreated(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((scanData) {
      setState(() {
        result = scanData;
      });
    });
  }

  @override
  void dispose() {
    // ignore: unrelated_type_equality_checks
    if (TargetPlatform.windows == true) {
      controller?.dispose();
      // ignore: unrelated_type_equality_checks
    } else if (TargetPlatform.iOS == true) {
      controller?.resumeCamera();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0E7865),
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
        title: const Text(
          'Unisekai',
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.w500,
          ),
        ),
        elevation: 0.0,
        backgroundColor: const Color(0xFF0E7865),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 5,
              child: QRView(
                cameraFacing: CameraFacing.back, // Use the rear camera
                key: qrKey, // The global key for the scanner
                onQRViewCreated:
                    _onQRViewCreated, // Function to call after the QR View is created
                overlay: QrScannerOverlayShape(
                  // Configure the overlay to look nice
                  borderRadius: 10,
                  borderWidth: 5,
                  borderColor: Colors.white,
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: (result != null)
                    ? Text(
                        'Barcode Type: ${describeEnum(result!.format)}   Data: ${result!.code}')
                    : Text('Scan a code'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
