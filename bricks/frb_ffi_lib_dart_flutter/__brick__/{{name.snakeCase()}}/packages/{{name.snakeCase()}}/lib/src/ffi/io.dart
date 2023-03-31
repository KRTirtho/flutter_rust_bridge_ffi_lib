import 'dart:ffi';

import 'package:{{name.snakeCase()}}/src/bridge_generated.dart';

typedef ExternalLibrary = DynamicLibrary;

{{name.pascalCase()}} createWrapperImpl(ExternalLibrary dylib) =>
    {{name.pascalCase()}}Impl(dylib);
