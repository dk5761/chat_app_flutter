// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String get email => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  bool get is_admin => throw _privateConstructorUsedError;
  Profile? get profile => throw _privateConstructorUsedError;
  String get authToken => throw _privateConstructorUsedError;
  String? get resetToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String? username,
      bool is_admin,
      Profile? profile,
      String authToken,
      String? resetToken});

  $ProfileCopyWith<$Res>? get profile;
}

/// @nodoc
class _$UserCopyWithImpl<$Res> implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  final User _value;
  // ignore: unused_field
  final $Res Function(User) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? username = freezed,
    Object? is_admin = freezed,
    Object? profile = freezed,
    Object? authToken = freezed,
    Object? resetToken = freezed,
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
      is_admin: is_admin == freezed
          ? _value.is_admin
          : is_admin // ignore: cast_nullable_to_non_nullable
              as bool,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile?,
      authToken: authToken == freezed
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String,
      resetToken: resetToken == freezed
          ? _value.resetToken
          : resetToken // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      String? username,
      bool is_admin,
      Profile? profile,
      String authToken,
      String? resetToken});

  @override
  $ProfileCopyWith<$Res>? get profile;
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, (v) => _then(v as _$_User));

  @override
  _$_User get _value => super._value as _$_User;

  @override
  $Res call({
    Object? email = freezed,
    Object? username = freezed,
    Object? is_admin = freezed,
    Object? profile = freezed,
    Object? authToken = freezed,
    Object? resetToken = freezed,
  }) {
    return _then(_$_User(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      is_admin: is_admin == freezed
          ? _value.is_admin
          : is_admin // ignore: cast_nullable_to_non_nullable
              as bool,
      profile: profile == freezed
          ? _value.profile
          : profile // ignore: cast_nullable_to_non_nullable
              as Profile?,
      authToken: authToken == freezed
          ? _value.authToken
          : authToken // ignore: cast_nullable_to_non_nullable
              as String,
      resetToken: resetToken == freezed
          ? _value.resetToken
          : resetToken // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  _$_User(
      {required this.email,
      required this.username,
      required this.is_admin,
      required this.profile,
      required this.authToken,
      required this.resetToken});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String email;
  @override
  final String? username;
  @override
  final bool is_admin;
  @override
  final Profile? profile;
  @override
  final String authToken;
  @override
  final String? resetToken;

  @override
  String toString() {
    return 'User(email: $email, username: $username, is_admin: $is_admin, profile: $profile, authToken: $authToken, resetToken: $resetToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.username, username) &&
            const DeepCollectionEquality().equals(other.is_admin, is_admin) &&
            const DeepCollectionEquality().equals(other.profile, profile) &&
            const DeepCollectionEquality().equals(other.authToken, authToken) &&
            const DeepCollectionEquality()
                .equals(other.resetToken, resetToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(username),
      const DeepCollectionEquality().hash(is_admin),
      const DeepCollectionEquality().hash(profile),
      const DeepCollectionEquality().hash(authToken),
      const DeepCollectionEquality().hash(resetToken));

  @JsonKey(ignore: true)
  @override
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {required final String email,
      required final String? username,
      required final bool is_admin,
      required final Profile? profile,
      required final String authToken,
      required final String? resetToken}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String get email;
  @override
  String? get username;
  @override
  bool get is_admin;
  @override
  Profile? get profile;
  @override
  String get authToken;
  @override
  String? get resetToken;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}

Profile _$ProfileFromJson(Map<String, dynamic> json) {
  return _Profile.fromJson(json);
}

/// @nodoc
mixin _$Profile {
  String get avatar_url => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res>;
  $Res call({String avatar_url, String name});
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
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      avatar_url: avatar_url == freezed
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
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
  $Res call({String avatar_url, String name});
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
    Object? name = freezed,
  }) {
    return _then(_$_Profile(
      avatar_url: avatar_url == freezed
          ? _value.avatar_url
          : avatar_url // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Profile implements _Profile {
  _$_Profile({required this.avatar_url, required this.name});

  factory _$_Profile.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileFromJson(json);

  @override
  final String avatar_url;
  @override
  final String name;

  @override
  String toString() {
    return 'Profile(avatar_url: $avatar_url, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Profile &&
            const DeepCollectionEquality()
                .equals(other.avatar_url, avatar_url) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(avatar_url),
      const DeepCollectionEquality().hash(name));

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
  factory _Profile(
      {required final String avatar_url,
      required final String name}) = _$_Profile;

  factory _Profile.fromJson(Map<String, dynamic> json) = _$_Profile.fromJson;

  @override
  String get avatar_url;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      throw _privateConstructorUsedError;
}
