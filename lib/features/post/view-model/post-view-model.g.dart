// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post-view-model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PostViewModel on _PostViewModelBase, Store {
  final _$postsAtom = Atom(name: '_PostViewModelBase.posts');

  @override
  List<Post> get posts {
    _$postsAtom.reportRead();
    return super.posts;
  }

  @override
  set posts(List<Post> value) {
    _$postsAtom.reportWrite(value, super.posts, () {
      super.posts = value;
    });
  }

  final _$isServiceRequestLoadingAtom =
      Atom(name: '_PostViewModelBase.isServiceRequestLoading');

  @override
  bool get isServiceRequestLoading {
    _$isServiceRequestLoadingAtom.reportRead();
    return super.isServiceRequestLoading;
  }

  @override
  set isServiceRequestLoading(bool value) {
    _$isServiceRequestLoadingAtom
        .reportWrite(value, super.isServiceRequestLoading, () {
      super.isServiceRequestLoading = value;
    });
  }

  final _$getAllPostAsyncAction = AsyncAction('_PostViewModelBase.getAllPost');

  @override
  Future<void> getAllPost() {
    return _$getAllPostAsyncAction.run(() => super.getAllPost());
  }

  final _$_PostViewModelBaseActionController =
      ActionController(name: '_PostViewModelBase');

  @override
  void changeRequest() {
    final _$actionInfo = _$_PostViewModelBaseActionController.startAction(
        name: '_PostViewModelBase.changeRequest');
    try {
      return super.changeRequest();
    } finally {
      _$_PostViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
posts: ${posts},
isServiceRequestLoading: ${isServiceRequestLoading}
    ''';
  }
}
