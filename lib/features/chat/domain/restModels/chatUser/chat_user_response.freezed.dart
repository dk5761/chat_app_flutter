// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_user_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ChatUserResponse _$ChatUserResponseFromJson(Map<String, dynamic> json) {
  return _ChatUserResponse.fromJson(json);
}

/// @nodoc
mixin _$ChatUserResponse {
  String get email => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  Profile? get profile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChatUserResponseCopyWith<ChatUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatUserResponseCopyWith<$Res> {
  factory $ChatUserResponseCopyWith(
          ChatUserResponse value, $Res Function(ChatUserResponse) then) =
      _$ChatUserResponseCopyWithImpl<$Res>;
  $Res call({String email, String? username, Profile? profile});

  $ProfileCopyWith<$Res>? get profile;
}

/// @nodoc
class _$ChatUserResponseCopyWithImpl<$Res>
    implements $ChatUserResponseCopyWith<$Res> {
  _$ChatUserResponseCopyWithImpl(this._value, this._then);

  final ChatUserResponse _value;
  // ignore: unused_field
  final $Res Function(ChatUserResponse) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? username = freezed,
    Object? profile = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile?,
    ));
  }

  @override
  $ProfileCopyWith<$Res>? get profile {
    if (_value.profile == null) {
      return null;
    }

    return $ProfileCopyWith<$Res>(_value.profile!, (value) {
      return _then(_value.copyWith(profile: value));
    });
  }
}

/// @nodoc
abstract class _$$_ChatUserResponseCopyWith<$Res>
    implements $ChatUserResponseCopyWith<$Res> {
  factory _$$_ChatUserResponseCopyWith(
          _$_ChatUserResponse value, $Res Function(_$_ChatUserResponse) then) =
      __$$_ChatUserResponseCopyWithImpl<$Res>;
  @override
  $Res call({String email, String? username, Profile? profile});

  @override
  $ProfileCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$_ChatUserResponseCopyWithImpl<$Res>
    extends _$ChatUserResponseCopyWithImpl<$Res>
    implements _$$_ChatUserResponseCopyWith<$Res> {
  __$$_ChatUserResponseCopyWithImpl(
      _$_ChatUserResponse _value, $Res Function(_$_ChatUserResponse) _then)
      : super(_value, (v) => _then(v as _$_ChatUserResponse));

  @override
  _$_ChatUserResponse get _value => super._value as _$_ChatUserResponse;

  @override
  $Res call({
    Object? email = freezed,
    Object? username = freezed,
    Object? profile = freezed,
  }) {
    return _then(_$_ChatUserResponse(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChatUserResponse implements _ChatUserResponse {
  _$_ChatUserResponse(
      {required this.email, required this.username, required this.profile});

  factory _$_ChatUserResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ChatUserResponseFromJson(json);

  @override
  final String email;
  @override
  final String? username;
  @override
  final Profile? profile;

  @override
  String toString() {
    return 'ChatUserResponse(email: $email, username: $username, profile: $profile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatUserResponse &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.profile, profile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(profile));

  @JsonKey(ignore: true)
  @override
  _$$_ChatUserResponseCopyWith<_$_ChatUserResponse> get copyWith =>
      __$$_ChatUserResponseCopyWithImpl<_$_ChatUserResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChatUserResponseToJson(
      this,
    );
  }
}

abstract class _ChatUserResponse implements ChatUserResponse {
  factory _ChatUserResponse(
      {required final String email,
      required final String? username,
      required final Profile? profile}) = _$_ChatUserResponse;

  factory _ChatUserResponse.fromJson(Map<String, dynamic> json) =
      _$_ChatUserResponse.fromJson;

  @override
  String get email;
  @override
  String? get username;
  @override
  Profile? get profile;
  @override
  @JsonKey(ignore: true)
  _$$_ChatUserResponseCopyWith<_$_ChatUserResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
mixin _$Profile {
  String get avatar_url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res>;
  $Res call({String avatar_url});
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res> implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  final Profile _value;
  // ignore: unused_field
  final $Res Function(Profile) _then;

  @override
  $Res call({
    Object? avatar_url = freezed,
  }) {
    return _then(_value.copyWith(
      avatar_url: avatar_url == freezed
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$_ProfileCopyWith(
          _$_Profile value, $Res Function(_$_Profile) then) =
      __$$_ProfileCopyWithImpl<$Res>;
  @override
  $Res call({String avatar_url});
}

/// @nodoc
class __$$_ProfileCopyWithImpl<$Res> extends _$ProfileCopyWithImpl<$Res>
    implements _$$_ProfileCopyWith<$Res> {
  __$$_ProfileCopyWithImpl(_$_Profile _value, $Res Function(_$_Profile) _then)
      : super(_value, (v) => _then(v as _$_Profile));

  @override
  _$_Profile get _value => super._value as _$_Profile;

  @override
  $Res call({
    Object? avatar_url = freezed,
  }) {
    return _then(_$_Profile(
      avatar_url: avatar_url == freezed
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Profile implements _Profile {
  _$_Profile({required this.avatar_url});

  factory _$_Profile.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileFromJson(json);

  @override
  final String avatar_url;

  @override
  String toString() {
    return 'Profile(avatar_url: $avatar_url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Profile &&
            const DeepCollectionEquality()
                .equals(other.avatar_url, avatar_url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(avatar_url));

  @JsonKey(ignore: true)
  @override
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      __$$_ProfileCopyWithImpl<_$_Profile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileToJson(
      this,
    );
  }
}

abstract class _Profile implements Profile {
  factory _Profile({required final String avatar_url}) = _$_Profile;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$_Profile.fromJson;

  @override
  String get avatar_url;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      throw _privateConstructorUsedError;
}
