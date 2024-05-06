// ignore_for_file: constant_identifier_names

enum ResultType {
  SUCCESS('A0000'),
  FAILED('A0119'),
  PARAM_INVALID('A0120'),
  DUPLICATE_ENTITY('A0121'),
  UNAUTHORIZED('A0123'),
  TOKEN_EXPIRED('A0125'),
  ACCESS_DENIED('A0126'),
  METHOD_NOT_ALLOWED('A0127'),
  VERIFY_FAILED('A0124');

  const ResultType(this.code);

  final String code;
}
