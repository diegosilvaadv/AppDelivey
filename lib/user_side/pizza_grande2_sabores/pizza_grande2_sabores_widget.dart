import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pizza_grande2_sabores_model.dart';
export 'pizza_grande2_sabores_model.dart';

class PizzaGrande2SaboresWidget extends StatefulWidget {
  const PizzaGrande2SaboresWidget({Key? key}) : super(key: key);

  @override
  _PizzaGrande2SaboresWidgetState createState() =>
      _PizzaGrande2SaboresWidgetState();
}

class _PizzaGrande2SaboresWidgetState extends State<PizzaGrande2SaboresWidget> {
  late PizzaGrande2SaboresModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PizzaGrande2SaboresModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50.0, 50.0, 0.0, 0.0),
                child: Text(
                  '2 Sabores',
                  style: FlutterFlowTheme.of(context).bodyMedium,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
