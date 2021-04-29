import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mobx/mobx.dart';
import 'package:mobx_example/models/user.dart';
import 'package:mobx_example/stores/user_store.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final userStore = UserStore();

  @override
  void initState() {
    userStore.getUsers();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final future = userStore.userListFuture;
    return Scaffold(
      body: SafeArea(
        child: Observer(
          builder: (_) {
            switch (future?.status) {
              case FutureStatus.fulfilled:
                List<User> users = future?.result;
                return buildUserList(users);
              case FutureStatus.rejected:
                return buildError();
              case FutureStatus.pending:
              default:
                return buildLoading();
            }
          },
        ),
      ),
    );
  }

  Widget buildLoading() {
    return Center(child: CircularProgressIndicator());
  }

  Widget buildError() {
    return Center(child: Text("Failed to load users"));
  }

  Widget buildUserList(List<User> users) {
    return ListView.builder(
      itemCount: users.length,
      itemBuilder: (ctx, index) {
        return Text(users[index].name!);
      },
    );
  }
}
