import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'bsr_page_model.dart';
export 'bsr_page_model.dart';

class BsrPageWidget extends StatefulWidget {
  const BsrPageWidget({super.key});

  @override
  State<BsrPageWidget> createState() => _BsrPageWidgetState();
}

class _BsrPageWidgetState extends State<BsrPageWidget> {
  late BsrPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BsrPageModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                        context.pushNamed('servicePage');
                      },
                    ),
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(40.0, 0.0, 40.0, 0.0),
                      child: Text(
                        currentUserEmail,
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
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
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 50.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: const Color(0x00EF39B4),
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 150.0,
                            fillColor: const Color(0xFFFD8383),
                            icon: const Icon(
                              Icons.key,
                              color: Colors.black,
                              size: 100.0,
                            ),
                            onPressed: () async {
                              context.pushNamed('buyPage');
                            },
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              'BUY',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.w900,
                                fontSize: 25.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: const Color(0x00EF39B4),
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 150.0,
                            fillColor: const Color(0xFFFD8383),
                            icon: const Icon(
                              Icons.monetization_on,
                              color: Colors.black,
                              size: 100.0,
                            ),
                            onPressed: () async {
                              context.pushNamed('sellPage');
                            },
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              'SELL',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.w900,
                                fontSize: 25.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: const Color(0x00EF39B4),
                            borderRadius: 20.0,
                            borderWidth: 1.0,
                            buttonSize: 150.0,
                            fillColor: const Color(0xFFFD8383),
                            icon: const Icon(
                              Icons.comment,
                              color: Colors.black,
                              size: 100.0,
                            ),
                            onPressed: () async {
                              context.pushNamed('reviewsPage');
                            },
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              'REVIEWS',
                              style: TextStyle(
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontWeight: FontWeight.w900,
                                fontSize: 25.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
