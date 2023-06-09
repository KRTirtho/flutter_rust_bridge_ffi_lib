// AUTO GENERATED FILE, DO NOT EDIT.
// Generated by `flutter_rust_bridge`@ 1.62.1.
// ignore_for_file: non_constant_identifier_names, unused_element, duplicate_ignore, directives_ordering, curly_braces_in_flow_control_structures, unnecessary_lambdas, slash_for_doc_comments, prefer_const_literals_to_create_immutables, implicit_dynamic_list_literal, duplicate_import, unused_import, unnecessary_import, prefer_single_quotes, prefer_const_constructors, use_super_parameters, always_use_package_imports, annotate_overrides, invalid_use_of_protected_member, constant_identifier_names, invalid_use_of_internal_member

import 'dart:convert';
import 'dart:async';
import 'package:meta/meta.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';
import 'bridge_generated.dart';
export 'bridge_generated.dart';

class {{name.pascalCase()}}Platform extends FlutterRustBridgeBase<{{name.pascalCase()}}Wire>
    with FlutterRustBridgeSetupMixin {
  {{name.pascalCase()}}Platform(FutureOr<WasmModule> dylib)
      : super({{name.pascalCase()}}Wire(dylib)) {
    setupMixinConstructor();
  }
  Future<void> setup() => inner.init;

// Section: api2wire

// Section: finalizer
}

// Section: WASM wire module

@JS('wasm_bindgen')
external {{name.pascalCase()}}WasmModule get wasmModule;

@JS()
@anonymous
class {{name.pascalCase()}}WasmModule implements WasmModule {
  external Object /* Promise */ call([String? moduleName]);
  external {{name.pascalCase()}}WasmModule bind(dynamic thisArg, String moduleName);
}

// Section: WASM wire connector

class {{name.pascalCase()}}Wire
    extends FlutterRustBridgeWasmWireBase<{{name.pascalCase()}}WasmModule> {
  {{name.pascalCase()}}Wire(FutureOr<WasmModule> module)
      : super(WasmModule.cast<{{name.pascalCase()}}WasmModule>(module));
}
