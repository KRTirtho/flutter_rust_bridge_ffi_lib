import 'package:{{name.snakeCase()}}/{{name.snakeCase()}}.dart';
import 'ffi/stub.dart'
    if (dart.library.io) 'ffi/io.dart'
    if (dart.library.html) 'ffi/web.dart';

{{name.pascalCase()}} createLib() => createWrapper(createLibraryImpl());
