import 'package:flutter/material.dart';
import 'package:mvvm_mobx/features/post/view-model/post-view-model.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class PostView extends StatelessWidget {
  final _viewModel = PostViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppbar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _viewModel.getAllPost();
        },
      ),
      body: Center(
        child: Observer(builder: (_) {
          return buildListViewPost();
        }),
      ),
    );
  }

  ListView buildListViewPost() {
    return ListView.builder(
        itemCount: _viewModel.posts.length,
        itemBuilder: (context, index) => card(index));
  }

  ListTile card(int index) {
    return ListTile(
      title: Text(_viewModel.posts[index].title),
      subtitle: Text(_viewModel.posts[index].body),
      trailing: Text(_viewModel.posts[index].userId.toString()),
    );
  }

  AppBar buildAppbar() {
    return AppBar(
      title: Text('Gamze'),
      leading: Observer(
        builder: (_) {
          return Visibility(
            visible: _viewModel.isServiceRequestLoading,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}
