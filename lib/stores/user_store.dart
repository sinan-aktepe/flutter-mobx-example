import 'package:mobx/mobx.dart';
import 'package:mobx_example/clients/user_client.dart';
import 'package:mobx_example/models/user.dart';

part 'user_store.g.dart';

class UserStore = _UserStore with _$UserStore;

abstract class _UserStore with Store {
  final _client = UserClient();

  @observable
  ObservableFuture<List<User>>? userListFuture;

  @observable
  ObservableFuture<User>? userFuture;

  @action
  Future getUsers() async {
    userListFuture = ObservableFuture(_client.getUsers().then((value) => value));
  }

  @action
  Future getUser(String id) async {
    userFuture = ObservableFuture(_client.getUser(id).then((value) => value));
  }
}
