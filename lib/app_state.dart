import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _cartum = prefs.getDouble('ff_cartum') ?? _cartum;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  List<DocumentReference> _cart = [];
  List<DocumentReference> get cart => _cart;
  set cart(List<DocumentReference> _value) {
    _cart = _value;
  }

  void addToCart(DocumentReference _value) {
    _cart.add(_value);
  }

  void removeFromCart(DocumentReference _value) {
    _cart.remove(_value);
  }

  void removeAtIndexFromCart(int _index) {
    _cart.removeAt(_index);
  }

  void updateCartAtIndex(
    int _index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    _cart[_index] = updateFn(_cart[_index]);
  }

  double _cartum = 0;
  double get cartum => _cartum;
  set cartum(double _value) {
    _cartum = _value;
    prefs.setDouble('ff_cartum', _value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
