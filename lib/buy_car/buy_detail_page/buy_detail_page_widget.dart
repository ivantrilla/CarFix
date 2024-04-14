import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_audio_player.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'buy_detail_page_model.dart';
export 'buy_detail_page_model.dart';

class BuyDetailPageWidget extends StatefulWidget {
  const BuyDetailPageWidget({
    super.key,
    this.imagenCocheUrl,
  });

  final String? imagenCocheUrl;

  @override
  State<BuyDetailPageWidget> createState() => _BuyDetailPageWidgetState();
}

class _BuyDetailPageWidgetState extends State<BuyDetailPageWidget> {
  late BuyDetailPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BuyDetailPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<VenderRow>>(
      future: VenderTable().querySingleRow(
        queryFn: (q) => q.eq(
          'imagenes_coche_url',
          widget.imagenCocheUrl,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: const Color(0xFF767676),
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<VenderRow> buyDetailPageVenderRowList = snapshot.data!;
        final buyDetailPageVenderRow = buyDetailPageVenderRowList.isNotEmpty
            ? buyDetailPageVenderRowList.first
            : null;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: const Color(0xFF767676),
            body: SafeArea(
              top: true,
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        FlutterFlowIconButton(
                          borderColor: const Color(0x004B39EF),
                          borderRadius: 20.0,
                          borderWidth: 0.0,
                          buttonSize: 60.0,
                          fillColor: const Color(0x004B39EF),
                          icon: const Icon(
                            Icons.keyboard_double_arrow_left,
                            color: Colors.black,
                            size: 40.0,
                          ),
                          onPressed: () async {
                            context.safePop();
                          },
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              40.0, 0.0, 40.0, 0.0),
                          child: Text(
                            currentUserEmail,
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        FlutterFlowIconButton(
                          borderColor: const Color(0x004B39EF),
                          borderRadius: 20.0,
                          borderWidth: 0.0,
                          buttonSize: 60.0,
                          fillColor: const Color(0x004B39EF),
                          icon: const Icon(
                            Icons.person,
                            color: Colors.black,
                            size: 40.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('profileMain');
                          },
                        ),
                      ],
                    ),
                    Text(
                      valueOrDefault<String>(
                        buyDetailPageVenderRow?.modelo,
                        'error',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: Colors.black,
                            fontSize: 30.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w800,
                          ),
                    ),
                    const SizedBox(
                      width: 370.0,
                      child: Divider(
                        thickness: 3.0,
                        color: Colors.black,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 5.0, 0.0, 0.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                valueOrDefault<String>(
                                  buyDetailPageVenderRow?.imagenesCocheUrl,
                                  'https://mbatugabnhisuomwekqy.supabase.co/storage/v1/object/public/CarPic/pics/default-car.png',
                                ),
                                width: 350.0,
                                height: 200.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(1.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            0.0, 10.0, 20.0, 0.0),
                        child: FFButtonWidget(
                          onPressed: () {
                            print('Button pressed ...');
                          },
                          text: buyDetailPageVenderRow!.precio!.toString(),
                          icon: const Icon(
                            Icons.monetization_on,
                            size: 15.0,
                          ),
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: const Color(0xFFFF8080),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.black,
                                  fontSize: 20.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w800,
                                ),
                            elevation: 3.0,
                            borderSide: const BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(24.0),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(20.0, 20.0, 20.0, 0.0),
                      child: FlutterFlowAudioPlayer(
                        audio: Audio.network(
                          buyDetailPageVenderRow.sonidoMotor!,
                          metas: Metas(
                            id: 'watch?v=2_5oG7Qpp1M-a0cafb6f',
                            title: 'Engine Sound',
                          ),
                        ),
                        titleTextStyle:
                            FlutterFlowTheme.of(context).titleLarge.override(
                                  fontFamily: 'Outfit',
                                  letterSpacing: 0.0,
                                ),
                        playbackDurationTextStyle:
                            FlutterFlowTheme.of(context).labelMedium.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                        fillColor:
                            FlutterFlowTheme.of(context).secondaryBackground,
                        playbackButtonColor: const Color(0xFFFF0000),
                        activeTrackColor:
                            FlutterFlowTheme.of(context).alternate,
                        elevation: 4.0,
                        playInBackground:
                            PlayInBackground.disabledRestoreOnForeground,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 40.0, 0.0, 0.0),
                      child: BarcodeWidget(
                        data: buyDetailPageVenderRow.urlCarWeb!,
                        barcode: Barcode.qrCode(),
                        width: 250.0,
                        height: 200.0,
                        color: Colors.black,
                        backgroundColor: const Color(0xFF767676),
                        errorBuilder: (context, error) => const SizedBox(
                          width: 250.0,
                          height: 200.0,
                        ),
                        drawText: false,
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 10.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          _model.scan = await FlutterBarcodeScanner.scanBarcode(
                            '#C62828', // scanning line color
                            'Cancel', // cancel button text
                            true, // whether to show the flash icon
                            ScanMode.QR,
                          );

                          await launchURL(buyDetailPageVenderRow.urlCarWeb!);

                          setState(() {});
                        },
                        text: 'SCAN',
                        options: FFButtonOptions(
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFFFF0000),
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 20.0,
                                letterSpacing: 0.0,
                              ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.black,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
