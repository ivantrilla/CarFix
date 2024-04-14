import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'maintenance_page_model.dart';
export 'maintenance_page_model.dart';

class MaintenancePageWidget extends StatefulWidget {
  const MaintenancePageWidget({super.key});

  @override
  State<MaintenancePageWidget> createState() => _MaintenancePageWidgetState();
}

class _MaintenancePageWidgetState extends State<MaintenancePageWidget> {
  late MaintenancePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MaintenancePageModel());
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
          child: Stack(
            children: [
              SingleChildScrollView(
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
                          icon: Icon(
                            Icons.keyboard_double_arrow_left,
                            color: FlutterFlowTheme.of(context).primaryText,
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
                          icon: Icon(
                            Icons.person,
                            color: FlutterFlowTheme.of(context).primaryText,
                            size: 40.0,
                          ),
                          onPressed: () async {
                            context.pushNamed('profileMain');
                          },
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'MAINTENANCE',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
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
                        FutureBuilder<List<MantenimientoRow>>(
                          future: MantenimientoTable().queryRows(
                            queryFn: (q) => q,
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<MantenimientoRow>
                                listViewMantenimientoRowList = snapshot.data!;
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              scrollDirection: Axis.vertical,
                              itemCount: listViewMantenimientoRowList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewMantenimientoRow =
                                    listViewMantenimientoRowList[listViewIndex];
                                return Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      15.0, 20.0, 15.0, 10.0),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'maintenanceDetailPage',
                                        queryParameters: {
                                          'imagenMantenimientoUrl':
                                              serializeParam(
                                            listViewMantenimientoRow
                                                .imagenesMantenimientoUrl,
                                            ParamType.String,
                                          ),
                                          'idMantenimiento': serializeParam(
                                            listViewMantenimientoRow.id,
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Container(
                                      width: 341.0,
                                      height: 125.0,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFFD8383),
                                        borderRadius:
                                            BorderRadius.circular(20.0),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 5.0, 0.0, 5.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(8.0),
                                              child: Image.network(
                                                valueOrDefault<String>(
                                                  listViewMantenimientoRow
                                                      .imagenesMantenimientoUrl,
                                                  'https://mbatugabnhisuomwekqy.supabase.co/storage/v1/object/public/MantenimientoPic/pics/mantenimiento-default.png',
                                                ),
                                                width: 130.0,
                                                height: 200.0,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(-1.0, 0.0),
                                            child: Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                listViewMantenimientoRow
                                                    .tipoMantenimiento,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.black,
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(1.0, 1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 15.0, 15.0),
                      child: FlutterFlowIconButton(
                        borderColor: FlutterFlowTheme.of(context).tertiary,
                        borderRadius: 3000.0,
                        borderWidth: 1.0,
                        buttonSize: 55.0,
                        fillColor: const Color(0xFFFF0000),
                        icon: Icon(
                          Icons.add,
                          color: FlutterFlowTheme.of(context).primaryText,
                          size: 32.0,
                        ),
                        onPressed: () async {
                          context.pushNamed('addMaintenance');
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
