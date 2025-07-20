// GENERATED CODE - DO NOT MODIFY BY HAND
enum ProductServicePath {
  userV1('user'),
  posts('posts'),
  usersV2('v2/users');

  final String value;
  const ProductServicePath(this.value);

  /// Returns the path as a string with the base URL.

  String withQuery(String value) {
    return '$value?${this.value}';
  }
}
