import 'package:freezed_annotation/freezed_annotation.dart';

{{{objProps}}}

part '{{modelName.snakeCase()}}.freezed.dart';
part '{{modelName.snakeCase()}}.g.dart';

@freezed
class {{modelName.pascalCase()}} with _${{modelName.pascalCase()}} {
  const factory {{modelName.pascalCase()}}({
    {{{ properties }}}
  }) = _{{modelName.pascalCase()}};

  factory {{modelName.pascalCase()}}.fromJson(Map<String, dynamic> json) =>
      _${{modelName.pascalCase()}}FromJson(json);
}
