import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_request_options.freezed.dart';
part 'create_request_options.g.dart';

@freezed
class CreateRequestOptions with _$CreateRequestOptions {
  const factory CreateRequestOptions({
    bool? skipRefresh,
  }) = _CreateRequestOptions;

  factory CreateRequestOptions.fromJson(Map<String, Object?> json) =>
      _$CreateRequestOptionsFromJson(json);
}
