import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../controllers/pengantar_pijit_endorphine_controller.dart';

class PengantarPijitEndorphineView
    extends GetView<PengantarPijitEndorphineController> {
  final GlobalKey<SfPdfViewerState> _pdfViewerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengatar Pijat Endorphin'),
      ),
      body: SfPdfViewer.asset(
        'assets/files/modul_endorphine.pdf',
        key: _pdfViewerKey,
      ),
    );
  }
}
