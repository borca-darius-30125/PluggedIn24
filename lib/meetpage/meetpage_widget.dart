import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'meetpage_model.dart';
export 'meetpage_model.dart';

class MeetpageWidget extends StatefulWidget {
  const MeetpageWidget({super.key});

  @override
  State<MeetpageWidget> createState() => _MeetpageWidgetState();
}

class _MeetpageWidgetState extends State<MeetpageWidget> {
  late MeetpageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MeetpageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.safePop();
    });
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
        backgroundColor: const Color(0xFFF1F4F8),
        appBar: responsiveVisibility(
          context: context,
          tabletLandscape: false,
          desktop: false,
        )
            ? AppBar(
                backgroundColor: const Color(0xFFF1F4F8),
                automaticallyImplyLeading: false,
                leading: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                  child: FlutterFlowIconButton(
                    borderRadius: 30.0,
                    buttonSize: 60.0,
                    icon: const Icon(
                      Icons.arrow_back_rounded,
                      color: Color(0xFF101213),
                      size: 30.0,
                    ),
                    onPressed: () async {
                      context.safePop();
                    },
                  ),
                ),
                title: Text(
                  'Meeting Details',
                  style: FlutterFlowTheme.of(context).headlineMedium.override(
                        fontFamily: 'Urbanist',
                        color: const Color(0xFF101213),
                        fontSize: 22.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts:
                            GoogleFonts.asMap().containsKey('Urbanist'),
                      ),
                ),
                actions: const [],
                centerTitle: false,
                elevation: 0.0,
              )
            : null,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 200.0,
                child: Stack(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 140.0,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: Image.network(
                            'https://images.unsplash.com/photo-1531496730074-83b638c0a7ac?w=1280&h=720',
                          ).image,
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 1.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 0.0, 16.0),
                        child: Container(
                          width: 90.0,
                          height: 90.0,
                          decoration: BoxDecoration(
                            color: const Color(0x4D9489F5),
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: const Color(0xFF9489F5),
                              width: 2.0,
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                4.0, 4.0, 4.0, 4.0),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(60.0),
                              child: Image.asset(
                                'assets/images/Picture_FuricPatrik_sotovision.jpg',
                                width: 100.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 0.0, 0.0),
                child: Text(
                  'Connected with:',
                  style: FlutterFlowTheme.of(context).headlineSmall.override(
                        fontFamily: 'Urbanist',
                        color: const Color(0xFF101213),
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                        useGoogleFonts:
                            GoogleFonts.asMap().containsKey('Urbanist'),
                      ),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 4.0, 0.0, 16.0),
                  child: Text(
                    'Furic Patrik',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Manrope',
                          color: const Color(0xFF39D2C0),
                          fontSize: 14.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.normal,
                          useGoogleFonts:
                              GoogleFonts.asMap().containsKey('Manrope'),
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 12.0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Meeting Duration:',
                          style: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: 'Manrope',
                                color: const Color(0xFF57636C),
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts:
                                    GoogleFonts.asMap().containsKey('Manrope'),
                              ),
                        ),
                        Text(
                          '30 min',
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: 'Urbanist',
                                color: const Color(0xFF101213),
                                fontSize: 30.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w300,
                                useGoogleFonts:
                                    GoogleFonts.asMap().containsKey('Urbanist'),
                              ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Meeting Topic:',
                          style: FlutterFlowTheme.of(context)
                              .labelMedium
                              .override(
                                fontFamily: 'Manrope',
                                color: const Color(0xFF57636C),
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                                useGoogleFonts:
                                    GoogleFonts.asMap().containsKey('Manrope'),
                              ),
                        ),
                        Text(
                          'RLC Circuits',
                          style: FlutterFlowTheme.of(context)
                              .displaySmall
                              .override(
                                fontFamily: 'Urbanist',
                                color: const Color(0xFF101213),
                                fontSize: 30.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w300,
                                useGoogleFonts:
                                    GoogleFonts.asMap().containsKey('Urbanist'),
                              ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/200w.gif',
                    width: 340.0,
                    height: 284.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
