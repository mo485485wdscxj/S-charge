import 'package:flutter/material.dart';

class UseNowPage extends StatefulWidget {
  @override
  _UseNowPageState createState() => _UseNowPageState();
}

class _UseNowPageState extends State<UseNowPage> {
  final GlobalKey<QrCodeScannerState> qrKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Use Now')),
      body: Center(
        child: QRView(
          key: qrKey,
          onQRViewCreated: (controller) {
            controller.scannedDataStream.listen((scanData) {
              // Handle scan data
            });
          },
        ),
      ),
    );
  }
}
