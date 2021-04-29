// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$UserStore on _UserStore, Store {
  final _$userListFutureAtom = Atom(name: '_UserStore.userListFuture');

  @override
  ObservableFuture<List<User>>? get userListFuture {
    _$userListFutureAtom.reportRead();
    return super.userListFuture;
  }

  @override
  set userListFuture(ObservableFuture<List<User>>? value) {
    _$userListFutureAtom.reportWrite(value, super.userListFuture, () {
      super.userListFuture = value;
    });
  }

  final _$userFutureAtom = Atom(name: '_UserStore.userFuture');

  @override
  ObservableFuture<User>? get userFuture {
    _$userFutureAtom.reportRead();
    return super.userFuture;
  }

  @override
  set userFuture(ObservableFuture<User>? value) {
    _$userFutureAtom.reportWrite(value, super.userFuture, () {
      super.userFuture = value;
    });
  }

  final _$getUsersAsyncAction = AsyncAction('_UserStore.getUsers');

  @override
  Future<dynamic> getUsers() {
    return _$getUsersAsyncAction.run(() => super.getUsers());
  }

  final _$getUserAsyncAction = AsyncAction('_UserStore.getUser');

  @override
  Future<dynamic> getUser(String id) {
    return _$getUserAsyncAction.run(() => super.getUser(id));
  }

  @override
  String toString() {
    return '''
userListFuture: ${userListFuture},
userFuture: ${userFuture}
    ''';
  }
}
