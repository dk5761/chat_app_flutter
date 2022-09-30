// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'chat_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatState {
  List<StateUser> get stateUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ChatStateCopyWith<ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatStateCopyWith<$Res> {
  factory $ChatStateCopyWith(ChatState value, $Res Function(ChatState) then) =
      _$ChatStateCopyWithImpl<$Res>;
  $Res call({List<StateUser> stateUser});
}

/// @nodoc
class _$ChatStateCopyWithImpl<$Res> implements $ChatStateCopyWith<$Res> {
  _$ChatStateCopyWithImpl(this._value, this._then);

  final ChatState _value;
  // ignore: unused_field
  final $Res Function(ChatState) _then;

  @override
  $Res call({
    Object? stateUser = freezed,
  }) {
    return _then(_value.copyWith(
      stateUser: stateUser == freezed
          ? _value.stateUser
          : stateUser // ignore: cast_nullable_to_non_nullable
              as List<StateUser>,
    ));
  }
}

/// @nodoc
abstract class _$$_ChatStateCopyWith<$Res> implements $ChatStateCopyWith<$Res> {
  factory _$$_ChatStateCopyWith(
          _$_ChatState value, $Res Function(_$_ChatState) then) =
      __$$_ChatStateCopyWithImpl<$Res>;
  @override
  $Res call({List<StateUser> stateUser});
}

/// @nodoc
class __$$_ChatStateCopyWithImpl<$Res> extends _$ChatStateCopyWithImpl<$Res>
    implements _$$_ChatStateCopyWith<$Res> {
  __$$_ChatStateCopyWithImpl(
      _$_ChatState _value, $Res Function(_$_ChatState) _then)
      : super(_value, (v) => _then(v as _$_ChatState));

  @override
  _$_ChatState get _value => super._value as _$_ChatState;

  @override
  $Res call({
    Object? stateUser = freezed,
  }) {
    return _then(_$_ChatState(
      stateUser: stateUser == freezed
          ? _value._stateUser
          : stateUser // ignore: cast_nullable_to_non_nullable
              as List<StateUser>,
    ));
  }
}

/// @nodoc

class _$_ChatState implements _ChatState {
  _$_ChatState({required final List<StateUser> stateUser})
      : _stateUser = stateUser;

  final List<StateUser> _stateUser;
  @override
  List<StateUser> get stateUser {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_stateUser);
  }

  @override
  String toString() {
    return 'ChatState(stateUser: $stateUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChatState &&
            const DeepCollectionEquality()
                .equals(other._stateUser, _stateUser));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_stateUser));

  @JsonKey(ignore: true)
  @override
  _$$_ChatStateCopyWith<_$_ChatState> get copyWith =>
      __$$_ChatStateCopyWithImpl<_$_ChatState>(this, _$identity);
}

abstract class _ChatState implements ChatState {
  factory _ChatState({required final List<StateUser> stateUser}) = _$_ChatState;

  @override
  List<StateUser> get stateUser;
  @override
  @JsonKey(ignore: true)
  _$$_ChatStateCopyWith<_$_ChatState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StateUser {
  UserConversation get user => throw _privateConstructorUsedError;
  List<Message> get message => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $StateUserCopyWith<StateUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StateUserCopyWith<$Res> {
  factory $StateUserCopyWith(StateUser value, $Res Function(StateUser) then) =
      _$StateUserCopyWithImpl<$Res>;
  $Res call({UserConversation user, List<Message> message});
}

/// @nodoc
class _$StateUserCopyWithImpl<$Res> implements $StateUserCopyWith<$Res> {
  _$StateUserCopyWithImpl(this._value, this._then);

  final StateUser _value;
  // ignore: unused_field
  final $Res Function(StateUser) _then;

  @override
  $Res call({
    Object? user = freezed,
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserConversation,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc
abstract class _$$_StateUserCopyWith<$Res> implements $StateUserCopyWith<$Res> {
  factory _$$_StateUserCopyWith(
          _$_StateUser value, $Res Function(_$_StateUser) then) =
      __$$_StateUserCopyWithImpl<$Res>;
  @override
  $Res call({UserConversation user, List<Message> message});
}

/// @nodoc
class __$$_StateUserCopyWithImpl<$Res> extends _$StateUserCopyWithImpl<$Res>
    implements _$$_StateUserCopyWith<$Res> {
  __$$_StateUserCopyWithImpl(
      _$_StateUser _value, $Res Function(_$_StateUser) _then)
      : super(_value, (v) => _then(v as _$_StateUser));

  @override
  _$_StateUser get _value => super._value as _$_StateUser;

  @override
  $Res call({
    Object? user = freezed,
    Object? message = freezed,
  }) {
    return _then(_$_StateUser(
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserConversation,
      message: message == freezed
          ? _value._message
          : message // ignore: cast_nullable_to_non_nullable
              as List<Message>,
    ));
  }
}

/// @nodoc

class _$_StateUser implements _StateUser {
  _$_StateUser({required this.user, required final List<Message> message})
      : _message = message;

  @override
  final UserConversation user;
  final List<Message> _message;
  @override
  List<Message> get message {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_message);
  }

  @override
  String toString() {
    return 'StateUser(user: $user, message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateUser &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other._message, _message));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(_message));

  @JsonKey(ignore: true)
  @override
  _$$_StateUserCopyWith<_$_StateUser> get copyWith =>
      __$$_StateUserCopyWithImpl<_$_StateUser>(this, _$identity);
}

abstract class _StateUser implements StateUser {
  factory _StateUser(
      {required final UserConversation user,
      required final List<Message> message}) = _$_StateUser;

  @override
  UserConversation get user;
  @override
  List<Message> get message;
  @override
  @JsonKey(ignore: true)
  _$$_StateUserCopyWith<_$_StateUser> get copyWith =>
      throw _privateConstructorUsedError;
}
