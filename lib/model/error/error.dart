import 'package:freezed_annotation/freezed_annotation.dart';

part 'error.freezed.dart';

@freezed
class MyError with _$MyError {
  const factory MyError.network() = NetworkError;
}
