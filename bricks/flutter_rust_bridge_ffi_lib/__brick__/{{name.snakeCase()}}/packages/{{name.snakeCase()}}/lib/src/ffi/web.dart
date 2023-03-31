import 'package:{{name.snakeCase()}}/src/bridge_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge.dart';

typedef ExternalLibrary = WasmModule;

{{name.pascalCase()}} createWrapperImpl(ExternalLibrary module) =>
    {{name.pascalCase()}}Impl.wasm(module);
