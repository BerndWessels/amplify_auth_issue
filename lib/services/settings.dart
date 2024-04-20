import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:signals/signals.dart';

class SettingsService {

  late SharedPreferences prefs;
  final List<EffectCleanup> _cleanup = [];

   // A function that initializes and performs async initialization logic, such as fetching data and setting up providers. It returns a Future<void>.
  Future<SettingsService> initialize() async {
    // Add your async initialization logic here
    prefs = await SharedPreferences.getInstance();
    return this;
  }

  Signal<T> _setting<T>(
    String key, {
    required T Function(String) get,
    required void Function(String, T?) set,
  }) {
    final s = signal<T>(get(key));
    _cleanup.add(s.subscribe((val) => set(key, val)));
    return s;
  }

  late Signal<int> counter = _setting(
    'counter',
    get: (key) => prefs.getInt(key) ?? 0,
    set: (key, val) {
      if (val == null) {
        prefs.remove(key);
      } else {
        prefs.setInt(key, val);
      }
    },
  );

  late Signal<ThemeMode> themeMode = _setting(
    'theme-mode',
    get: (key) => ThemeMode.values[prefs.getInt(key) ?? ThemeMode.system.index],
    set: (key, val) {
      if (val == null) {
        prefs.remove(key);
      } else {
        prefs.setInt(key, val.index);
      }
    },
  );

  late Signal<String?> userId = _setting(
    'user-id',
    get: (key) => prefs.getString(key),
    set: (key, val) {
      if (val == null) {
        prefs.remove(key);
      } else {
        prefs.setString(key, val);
      }
    },
  );

  late Signal<bool> demoMode = _setting(
    'demo-mode',
    get: (key) => prefs.getBool(key) ?? false,
    set: (key, val) {
      if (val == null) {
        prefs.remove(key);
      } else {
        prefs.setBool(key, val);
      }
    },
  );

  late Signal<bool> dismissOnboarding = _setting(
    'dismiss-onboarding',
    get: (key) => prefs.getBool(key) ?? false,
    set: (key, val) {
      if (val == null) {
        prefs.remove(key);
      } else {
        prefs.setBool(key, val);
      }
    },
  );

  void dispose() {
    for (final cb in _cleanup) {
      cb();
    }
  }
}
