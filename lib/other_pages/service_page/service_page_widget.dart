import '/auth/supabase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'service_page_model.dart';
export 'service_page_model.dart';

class ServicePageWidget extends StatefulWidget {
  const ServicePageWidget({super.key});

  @override
  State<ServicePageWidget> createState() => _ServicePageWidgetState();
}

class _ServicePageWidgetState extends State<ServicePageWidget> {
  late ServicePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ServicePageModel());
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
                      context.pushNamed('mapPage');
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
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/logo_sin_fondo.png',
                        width: 300.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Choose your option \nto continue ...',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'PT Serif',
                            color: Colors.white,
                            fontSize: 35.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 60.0, 0.0, 0.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                            Icons.add_shopping_cart,
                            color: Colors.black,
                            size: 100.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('bsrPage');
                          },
                        ),
                      ],
                    ),
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
                            Icons.car_crash,
                            color: Colors.black,
                            size: 100.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('maintenancePage');
                          },
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
    );
  }
}
