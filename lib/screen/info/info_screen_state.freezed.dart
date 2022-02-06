// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'info_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InfoScreenStateTearOff {
  const _$InfoScreenStateTearOff();

  _InitialInfoScreenState initial() {
    return const _InitialInfoScreenState();
  }

  _ListPostsInfoScreenState listPosts(List<Post> posts) {
    return _ListPostsInfoScreenState(
      posts,
    );
  }

  _ErrorInfoScreenState error(List<String> errors) {
    return _ErrorInfoScreenState(
      errors,
    );
  }
}

/// @nodoc
const $InfoScreenState = _$InfoScreenStateTearOff();

/// @nodoc
mixin _$InfoScreenState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Post> posts) listPosts,
    required TResult Function(List<String> errors) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Post> posts)? listPosts,
    TResult Function(List<String> errors)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Post> posts)? listPosts,
    TResult Function(List<String> errors)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialInfoScreenState value) initial,
    required TResult Function(_ListPostsInfoScreenState value) listPosts,
    required TResult Function(_ErrorInfoScreenState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialInfoScreenState value)? initial,
    TResult Function(_ListPostsInfoScreenState value)? listPosts,
    TResult Function(_ErrorInfoScreenState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialInfoScreenState value)? initial,
    TResult Function(_ListPostsInfoScreenState value)? listPosts,
    TResult Function(_ErrorInfoScreenState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoScreenStateCopyWith<$Res> {
  factory $InfoScreenStateCopyWith(
          InfoScreenState value, $Res Function(InfoScreenState) then) =
      _$InfoScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$InfoScreenStateCopyWithImpl<$Res>
    implements $InfoScreenStateCopyWith<$Res> {
  _$InfoScreenStateCopyWithImpl(this._value, this._then);

  final InfoScreenState _value;
  // ignore: unused_field
  final $Res Function(InfoScreenState) _then;
}

/// @nodoc
abstract class _$InitialInfoScreenStateCopyWith<$Res> {
  factory _$InitialInfoScreenStateCopyWith(_InitialInfoScreenState value,
          $Res Function(_InitialInfoScreenState) then) =
      __$InitialInfoScreenStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialInfoScreenStateCopyWithImpl<$Res>
    extends _$InfoScreenStateCopyWithImpl<$Res>
    implements _$InitialInfoScreenStateCopyWith<$Res> {
  __$InitialInfoScreenStateCopyWithImpl(_InitialInfoScreenState _value,
      $Res Function(_InitialInfoScreenState) _then)
      : super(_value, (v) => _then(v as _InitialInfoScreenState));

  @override
  _InitialInfoScreenState get _value => super._value as _InitialInfoScreenState;
}

/// @nodoc

class _$_InitialInfoScreenState extends _InitialInfoScreenState {
  const _$_InitialInfoScreenState() : super._();

  @override
  String toString() {
    return 'InfoScreenState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _InitialInfoScreenState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Post> posts) listPosts,
    required TResult Function(List<String> errors) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Post> posts)? listPosts,
    TResult Function(List<String> errors)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Post> posts)? listPosts,
    TResult Function(List<String> errors)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialInfoScreenState value) initial,
    required TResult Function(_ListPostsInfoScreenState value) listPosts,
    required TResult Function(_ErrorInfoScreenState value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialInfoScreenState value)? initial,
    TResult Function(_ListPostsInfoScreenState value)? listPosts,
    TResult Function(_ErrorInfoScreenState value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialInfoScreenState value)? initial,
    TResult Function(_ListPostsInfoScreenState value)? listPosts,
    TResult Function(_ErrorInfoScreenState value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _InitialInfoScreenState extends InfoScreenState {
  const factory _InitialInfoScreenState() = _$_InitialInfoScreenState;
  const _InitialInfoScreenState._() : super._();
}

/// @nodoc
abstract class _$ListPostsInfoScreenStateCopyWith<$Res> {
  factory _$ListPostsInfoScreenStateCopyWith(_ListPostsInfoScreenState value,
          $Res Function(_ListPostsInfoScreenState) then) =
      __$ListPostsInfoScreenStateCopyWithImpl<$Res>;
  $Res call({List<Post> posts});
}

/// @nodoc
class __$ListPostsInfoScreenStateCopyWithImpl<$Res>
    extends _$InfoScreenStateCopyWithImpl<$Res>
    implements _$ListPostsInfoScreenStateCopyWith<$Res> {
  __$ListPostsInfoScreenStateCopyWithImpl(_ListPostsInfoScreenState _value,
      $Res Function(_ListPostsInfoScreenState) _then)
      : super(_value, (v) => _then(v as _ListPostsInfoScreenState));

  @override
  _ListPostsInfoScreenState get _value =>
      super._value as _ListPostsInfoScreenState;

  @override
  $Res call({
    Object? posts = freezed,
  }) {
    return _then(_ListPostsInfoScreenState(
      posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc

class _$_ListPostsInfoScreenState extends _ListPostsInfoScreenState {
  const _$_ListPostsInfoScreenState(this.posts) : super._();

  @override
  final List<Post> posts;

  @override
  String toString() {
    return 'InfoScreenState.listPosts(posts: $posts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ListPostsInfoScreenState &&
            const DeepCollectionEquality().equals(other.posts, posts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(posts));

  @JsonKey(ignore: true)
  @override
  _$ListPostsInfoScreenStateCopyWith<_ListPostsInfoScreenState> get copyWith =>
      __$ListPostsInfoScreenStateCopyWithImpl<_ListPostsInfoScreenState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Post> posts) listPosts,
    required TResult Function(List<String> errors) error,
  }) {
    return listPosts(posts);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Post> posts)? listPosts,
    TResult Function(List<String> errors)? error,
  }) {
    return listPosts?.call(posts);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Post> posts)? listPosts,
    TResult Function(List<String> errors)? error,
    required TResult orElse(),
  }) {
    if (listPosts != null) {
      return listPosts(posts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialInfoScreenState value) initial,
    required TResult Function(_ListPostsInfoScreenState value) listPosts,
    required TResult Function(_ErrorInfoScreenState value) error,
  }) {
    return listPosts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialInfoScreenState value)? initial,
    TResult Function(_ListPostsInfoScreenState value)? listPosts,
    TResult Function(_ErrorInfoScreenState value)? error,
  }) {
    return listPosts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialInfoScreenState value)? initial,
    TResult Function(_ListPostsInfoScreenState value)? listPosts,
    TResult Function(_ErrorInfoScreenState value)? error,
    required TResult orElse(),
  }) {
    if (listPosts != null) {
      return listPosts(this);
    }
    return orElse();
  }
}

abstract class _ListPostsInfoScreenState extends InfoScreenState {
  const factory _ListPostsInfoScreenState(List<Post> posts) =
      _$_ListPostsInfoScreenState;
  const _ListPostsInfoScreenState._() : super._();

  List<Post> get posts;
  @JsonKey(ignore: true)
  _$ListPostsInfoScreenStateCopyWith<_ListPostsInfoScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorInfoScreenStateCopyWith<$Res> {
  factory _$ErrorInfoScreenStateCopyWith(_ErrorInfoScreenState value,
          $Res Function(_ErrorInfoScreenState) then) =
      __$ErrorInfoScreenStateCopyWithImpl<$Res>;
  $Res call({List<String> errors});
}

/// @nodoc
class __$ErrorInfoScreenStateCopyWithImpl<$Res>
    extends _$InfoScreenStateCopyWithImpl<$Res>
    implements _$ErrorInfoScreenStateCopyWith<$Res> {
  __$ErrorInfoScreenStateCopyWithImpl(
      _ErrorInfoScreenState _value, $Res Function(_ErrorInfoScreenState) _then)
      : super(_value, (v) => _then(v as _ErrorInfoScreenState));

  @override
  _ErrorInfoScreenState get _value => super._value as _ErrorInfoScreenState;

  @override
  $Res call({
    Object? errors = freezed,
  }) {
    return _then(_ErrorInfoScreenState(
      errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

class _$_ErrorInfoScreenState extends _ErrorInfoScreenState {
  const _$_ErrorInfoScreenState(this.errors) : super._();

  @override
  final List<String> errors;

  @override
  String toString() {
    return 'InfoScreenState.error(errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorInfoScreenState &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(errors));

  @JsonKey(ignore: true)
  @override
  _$ErrorInfoScreenStateCopyWith<_ErrorInfoScreenState> get copyWith =>
      __$ErrorInfoScreenStateCopyWithImpl<_ErrorInfoScreenState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Post> posts) listPosts,
    required TResult Function(List<String> errors) error,
  }) {
    return error(errors);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Post> posts)? listPosts,
    TResult Function(List<String> errors)? error,
  }) {
    return error?.call(errors);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Post> posts)? listPosts,
    TResult Function(List<String> errors)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(errors);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialInfoScreenState value) initial,
    required TResult Function(_ListPostsInfoScreenState value) listPosts,
    required TResult Function(_ErrorInfoScreenState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_InitialInfoScreenState value)? initial,
    TResult Function(_ListPostsInfoScreenState value)? listPosts,
    TResult Function(_ErrorInfoScreenState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialInfoScreenState value)? initial,
    TResult Function(_ListPostsInfoScreenState value)? listPosts,
    TResult Function(_ErrorInfoScreenState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorInfoScreenState extends InfoScreenState {
  const factory _ErrorInfoScreenState(List<String> errors) =
      _$_ErrorInfoScreenState;
  const _ErrorInfoScreenState._() : super._();

  List<String> get errors;
  @JsonKey(ignore: true)
  _$ErrorInfoScreenStateCopyWith<_ErrorInfoScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
