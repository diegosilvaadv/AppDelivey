import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pizza_grande1sabor_model.dart';
export 'pizza_grande1sabor_model.dart';

class PizzaGrande1saborWidget extends StatefulWidget {
  const PizzaGrande1saborWidget({Key? key}) : super(key: key);

  @override
  _PizzaGrande1saborWidgetState createState() =>
      _PizzaGrande1saborWidgetState();
}

class _PizzaGrande1saborWidgetState extends State<PizzaGrande1saborWidget> {
  late PizzaGrande1saborModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PizzaGrande1saborModel());

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
                  '1 Sabor',
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
