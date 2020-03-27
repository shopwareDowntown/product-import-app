import 'package:flutter/material.dart';
import 'package:product_import_app/model/authority.dart';

class AccessDataChangeNotifier extends ChangeNotifier {
  String _contextToken;
  Authority _authority;
  bool _initialized = false;

  bool get hasData => _initialized;

  bool get isLoggedIn => this._contextToken != null;

  String get contextToken => _contextToken;

  Authority get authority => _authority;

  void update({
    String contextToken,
    Authority authority,
  }) {
    this._contextToken = contextToken ?? this._contextToken;
    this._authority = authority ?? this._authority;

    this._initialized = true;

    notifyListeners();
  }

  void reset() {
    this._contextToken = null;
    this._authority = null;

    this._initialized = false;

    notifyListeners();
  }
}
