import 'package:hive_flutter/hive_flutter.dart';

class LocalStorage {
  static final LocalStorage _instance = LocalStorage._internal();
  static Box? _box;

  LocalStorage._internal();

  /// Singleton instance
  factory LocalStorage() => _instance;

  /// Initialize Hive only once
  static Future<void> init({String boxName = 'appBox'}) async {
    if (_box != null) return; // Already initialized
    try {
      await Hive.initFlutter();
      _box = await Hive.openBox(boxName);
      print('LocalStorage: Initialized Hive box "$boxName"');
    } catch (e) {
      print('LocalStorage Error: $e');
    }
  }

  /// Write value safely (avoid unnecessary write if value is same)
  static Future<void> write(String key, dynamic value) async {
    if (_box == null) {
      print('LocalStorage Error: Box not initialized');
      return;
    }

    final currentValue = _box!.get(key);
    if (currentValue != value) {
      try {
        await _box!.put(key, value);
      } catch (e) {
        print('LocalStorage write error: $e');
      }
    }
  }

  /// Read value safely
  static dynamic read(String key, {dynamic defaultValue}) {
    if (_box == null) {
      print('LocalStorage Error: Box not initialized');
      return defaultValue;
    }
    return _box!.get(key, defaultValue: defaultValue);
  }

  /// Delete key safely
  static Future<void> delete(String key) async {
    if (_box == null) {
      print('LocalStorage Error: Box not initialized');
      return;
    }
    try {
      await _box!.delete(key);
    } catch (e) {
      print('LocalStorage delete error: $e');
    }
  }

  /// Check if key exists
  static bool containsKey(String key) {
    if (_box == null) {
      print('LocalStorage Error: Box not initialized');
      return false;
    }
    return _box!.containsKey(key);
  }

  /// Clear all data
  static Future<void> clear() async {
    if (_box == null) return;
    try {
      await _box!.clear();
    } catch (e) {
      print('LocalStorage clear error: $e');
    }
  }

  /// Close box safely
  static Future<void> close() async {
    if (_box == null) return;
    try {
      await _box!.close();
      _box = null;
    } catch (e) {
      print('LocalStorage close error: $e');
    }
  }
}
